/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tcc.table;

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
