/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Questao;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com Questão e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Questao com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.5
 */

public class QuestaoAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String COD_QUESTIONARIO;
    private static final String COD_QUESTAO;
    private static final String DESC_PERGUNTA;
    private static final String RESP_CORRETA;
    private static final String RESP_INCORRETA1;
    private static final String RESP_INCORRETA2;
    private static final String RESP_INCORRETA3;
    
    //Inicialização das constantes
    static{
        COD_QUESTIONARIO = "Codigo_Questionario";
        COD_QUESTAO = "Codigo_Questao";
        DESC_PERGUNTA = "Descricao_Pergunta";
        RESP_CORRETA = "Descricao_Resposta_Correta";
        RESP_INCORRETA1 = "Descricao_Resposta_Incorreta_1";
        RESP_INCORRETA2 = "Descricao_Resposta_Incorreta_2";
        RESP_INCORRETA3 = "Descricao_Resposta_Incorreta_3";
    }

    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Questao encontrados utilizando a query recebida.
     */
    public static ArrayList<Questao> get(String query){
        
        ArrayList<Questao> questoes = new ArrayList<>();
        
        try{
            result = SQL.query("SELECT * FROM questao " + query);
            
            if(result.next()) {
                do{
                    Questao questao = new Questao();
                     questao.setCodQuestionario(result.getInt(COD_QUESTIONARIO));
                     questao.setCodQuestao(result.getInt(COD_QUESTAO));
                     questao.setDescPergunta(result.getString(DESC_PERGUNTA));
                     questao.setDescRespCorreta(result.getString(RESP_CORRETA));
                     questao.setDescRespIncorreta1(result.getString(RESP_INCORRETA1));
                     questao.setDescRespIncorreta2(result.getString(RESP_INCORRETA2));
                     questao.setDescRespIncorreta3(result.getString(RESP_INCORRETA3));
                    questoes.add(questao);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return questoes;
    }

    /**
     * Retorna as Questões.
     * @param codQuest
     * @return as questões que compõe o questionário.
     */
    public static ArrayList<Questao> getQuestoesFromCodQuest(int codQuest){
        
        ArrayList<Questao> questoes = get("WHERE "
                                     + COD_QUESTIONARIO + " = " + codQuest);

        if (questoes==null){
            System.out.println("Nenhum questionario encontrado com esse codigo" +
                    codQuest);
            return null;
        }
        
        return questoes;
    }
    
    /**
     * Pesquisa no bd todas as perguntas.
     * @return todos os objetos Pergunta em um ArrayList.
     */
    public static ArrayList<Questao> getAll() {
        return get("SELECT * FROM questao");
    }
    
    /**
     * Deleta um pergunta do bd usando o codigo da mesmo.
     * @param codPerg da pergunta a ser removida.
     * @param codQuest da pergunta a ser removida.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codPerg, int codQuest) {
        String stm = "DELETE FROM pergunta WHERE "
                                      + COD_PERGUNTA + " = " + codPerg + "AND"
                                      + COD_QUESTIONARIO + " = " + codQuest;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere uma Pergunta no bd
     * @param pergunta
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Questao questao){

        String stm = "INSERT INTO pergunta (" + COD_QUESTIONARIO + ", " 
                   + COD_PERGUNTA + ", " + DESC_PERGUNTA + ") VALUES (" 
                   + questao.getCodQuestionario() + ", "
                   + questao.getDescRespIncorreta3() + ", '"
                   + questao.getDescPergunta() + "');" ;

        return SQL.query(stm) == null;
    }
       
    /**
     * Atualiza a pergunta no bd correspondente ao objeto Pergunta recebido
     * @param pergunta
     * @return true se não houver problemas na operação.
     */
//    public static boolean update(Questao pergunta){
//         
//        String stm = "UPDATE pergunta SET (" + DESC_PERGUNTA + ") = ("
//                   + questao.getDescPergunta()+")" + " WHERE " COD_PERGUNTA 
//                   + " = " + codPerg + "AND" + COD_QUESTIONARIO + " = " 
//                   + codQuest;
//
//        return SQL.query(stm) == null;
//    }
}
