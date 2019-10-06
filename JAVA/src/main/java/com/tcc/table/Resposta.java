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
