/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aistein.controller;

import com.aistein.model.service.JogoAcessService;
import com.aistein.model.table.Jogo;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arthur
 */
@WebServlet(name = "BackToFrontServlet", urlPatterns = {"/BackToFrontServlet"})
public class BackToFrontServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        String resposta = "";
        String req = request.getParameter("req");
        String tipo = request.getParameter("tipo");
        Boolean res = false;
        /**
         * Switch que define qual operação será feita, são elas:
         */
        switch (req) {
            case "buscarJogo":
            ArrayList<Jogo> jogo = JogoAcessService.getAllJogo();
            System.out.println(jogo.toString());
            resposta = jogo.toString();


            break;
            /* alguem testa isso aqui
            
            case "buscarQuestionario":
            String respostaPergunta = '';
            ArrayList<Cod_Perguntas> Cod_perguntas =
              questionarioAcessService.getAllPerguntas(tipo);
            ArrayList<Descricao_Resposta> respostas;

              //tipo = cod_questionario/Materia
              for (  ArrayList<Cod_Perguntas> Cod_perguntas : cod_pergunta ) {
                //pega a descrição da pergunta
                respostaPergunta =
                respostaPergunta.concat
                (questionarioAcessService.getDescPergunta(tipo,cod_pergunta));
                //separa a pergunta das respostas apartir de '|'
                respostaPergunta =
                respostaPergunta.concat('|');
                //pega as respostas da pergunta obtida
                respostaPergunta =
                respostaPergunta.concat
                (questionarioAcessService.getAllRespostas(tipo,cod_pergunta));
                //separa o conjunto anterior a partir de '|'
                respostaPergunta =
                respostaPergunta.concat('||');
              }
              //supondo que tudo retorne uma string
              resposta = respostaPergunta;
              */

            default:
        }
        try (PrintWriter out = response.getWriter()) {
            out.println(resposta);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BackToFrontServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(BackToFrontServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
