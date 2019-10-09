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
public class Pergunta {
    private String perguntaAberta, perguntaFechada;

    public Pergunta() {
    }

    public Pergunta(String perguntaAberta, String perguntaFechada) {
        this.perguntaAberta = perguntaAberta;
        this.perguntaFechada = perguntaFechada;
    }

    public String getPerguntaAberta() {
        return perguntaAberta;
    }

    public void setPerguntaAberta(String perguntaAberta) {
        this.perguntaAberta = perguntaAberta;
    }

    public String getPerguntaFechada() {
        return perguntaFechada;
    }

    public void setPerguntaFechada(String perguntaFechada) {
        this.perguntaFechada = perguntaFechada;
    }
    
    
}
