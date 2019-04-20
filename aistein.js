const express = require("express");
const app = express();
const handlebars = require('express-handlebars');
const bodyParser = require('body-parser');
const NaturalLanguageUnderstandingV1 = require('watson-developer-cloud/natural-language-understanding/v1.js');
const google = require('googleapis').google;
const customSearch = google.customsearch('v1');
const algorithmia = require('algorithmia');
const sentenceBoundaryDetection = require('sbd');
const keywordExtractor = require("keyword-extractor");

var nlu = new NaturalLanguageUnderstandingV1({
  iam_apikey: "uARXG4hUEPniD82RdXAzBcDMu5jTYl-DGNd5rcqGuLej",
  version: '2018-04-05',
  url: 'https://gateway.watsonplatform.net/natural-language-understanding/api/'
});

async function AskToWatson(question) {
  return new Promise((resolve, reject) => {
    nlu.analyze({
      text: question,
      features: {
        keywords: {}
      },
      language: "pt"
    }, (error, response) => {
      if (error) {
        throw error
      }
      const keywords = response.keywords.map((keyword) => {
        return keyword.text
      })
      resolve(keywords)
    })
  })
}

async function searchGoogleImages(question) {
  const resposta = await customSearch.cse.list({
    auth: "AIzaSyCNwB8zimWJm9jExqWZvEEpJPvpsgAAex4",
    cx: "013839737943436370044:iukxm4y9hiy",
    q: question,
    searchType: 'image',
    imgSize: 'huge',
    num: 2
  })
  const imagesUrl = resposta.data.items.map((item) => {
    return item.link;
  })
  return imagesUrl;
}

async function colectDataFromWikipedia(question) {
  const algorithmiaAuthenticated = algorithmia('simjkpqZUEGN2dSAhM5nInWOjnC1');
  const wikipediaAlgorithm = algorithmiaAuthenticated.algo('web/WikipediaParser/0.1.2');
  const wikipediaResponse = await wikipediaAlgorithm.pipe({
      "lang" : "pt",
      "articleName": question
    });
  const wikipediaContent = wikipediaResponse.get().content;
  return wikipediaContent;
}

function sanitizeContent(content) {
   const withoutBlankLinesAndMarkdown = removeBlankLinesAndMarkdown(content)
   const withoutDatesInParentheses = removeDatesInParentheses(withoutBlankLinesAndMarkdown)

   const conteudo = withoutDatesInParentheses

   function removeBlankLinesAndMarkdown(text) {
     const allLines = text.split('\n')

     const withoutBlankLinesAndMarkdown = allLines.filter((line) => {
       if (line.trim().length === 0 || line.trim().startsWith('=')) {
         return false
       }

       return true
     })

     return withoutBlankLinesAndMarkdown.join(' ')
   }
   return conteudo;
 }

 function removeDatesInParentheses(text) {
   return text.replace(/\((?:\([^()]*\)|[^()])*\)/gm, '').replace(/  /g,' ')
 }

 function breakContentIntoSentences(content) {
   const arraySentences = []

   const sentences = sentenceBoundaryDetection.sentences(content)
   sentences.forEach((sentence) => {
     arraySentences.push({
       text: sentence
     })
   })
   return arraySentences;
 }

//Config
  //Template Engine
    app.engine('handlebars', handlebars({defaultLayout: 'main'}))
    app.set('view engine', 'handlebars')
//Body parser
    app.use(bodyParser.urlencoded({extended: false}))
    app.use(bodyParser.json())
app.get("/formulario", function(req, res){
  res.render("formulario")
});

app.post('/respostaMainQuestion', async function(req, res) {
  let watsonResposta = await AskToWatson(req.body.mainQuestion);
  console.log(watsonResposta[0]);
  let googleImgResposta = await searchGoogleImages(watsonResposta[0]);
  let wikipediaResposta = await colectDataFromWikipedia(watsonResposta[0]);
  let textoSeco = sanitizeContent(wikipediaResposta);
  let textoSeparado = breakContentIntoSentences(textoSeco);
  let repostasWatson = [];
  let palavrasChave = [];
  let aux = watsonResposta[0].split(" ");
  for (var i = 0; i < textoSeparado.length; i++) {
    repostasWatson.push(keywordExtractor.extract(textoSeparado[i].text ,{language:"portuguese",
    remove_digits: false,
    return_chained_words: true}))
  }
  let stringResposta = "";
  for (var i = 0; i < 2; i++) {
     stringResposta += "<img src=" + googleImgResposta[i] + " height='100' width='100'>";
   }
  stringResposta += " " + Object.values(textoSeparado[2]) + " <h1>" + watsonResposta + "</h1>";
  res.send(stringResposta);
})

app.listen(8081, function() {
  console.log("Server Running");
});
