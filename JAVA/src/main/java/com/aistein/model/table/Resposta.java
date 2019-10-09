/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 *
 * @author Arthur
 */
public class Resposta {
    private String respostaAberta, respostaFechada;

    public Resposta() {
    }

    public Resposta(String respostaAberta, String respostaFechada) {
        this.respostaAberta = respostaAberta;
        this.respostaFechada = respostaFechada;
    }

    public String getRespostaAberta() {
        return respostaAberta;
    }

    public void setRespostaAberta(String respostaAberta) {
        this.respostaAberta = respostaAberta;
    }

    public String getRespostaFechada() {
        return respostaFechada;
    }

    public void setRespostaFechada(String respostaFechada) {
        this.respostaFechada = respostaFechada;
    }
    
}
