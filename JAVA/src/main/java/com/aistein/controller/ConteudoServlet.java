/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */
package com.aistein.controller;

import com.aistein.model.table.Conteudo;
import com.aistein.model.service.ConteudoAccessService;


import com.aistein.util.JSON;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Arthur
 */
@WebServlet(name = "ConteudoServlet", urlPatterns = {"/ConteudoServlet"})
public class ConteudoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              Conteudo frontConteudo = JSON.parse(request.getParameter("tipo"),
                           Conteudo.class);
               String resposta = "";
               String req = request.getParameter("req");
               String tipo = request.getParameter("tipo");
               Boolean res = false;


               switch (req) {
                   case "all":
                     resposta = JSON.stringify(ConteudoAccessService.getAll());
                       System.out.println(resposta);
                   break;
                   case "especifico":
                     resposta = JSON.stringify(ConteudoAccessService.getConteudoFromNome(frontConteudo));
                   break;
                   case "codigo":
                     resposta = JSON.stringify(ConteudoAccessService.getConteudoFromCodConteudo(frontConteudo));
                   break;
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
        processRequest(request, response);
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
        processRequest(request, response);
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
