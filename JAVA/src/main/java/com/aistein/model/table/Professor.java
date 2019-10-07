/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aistein.table;

/**
 *
 * @author Arthur
 */
public class Professor {
    private String criaPergunta, escola;
    private boolean removePergunta;

    public Professor() {
    }

    public Professor(String criaPergunta, String escola, boolean removePergunta) {
        this.criaPergunta = criaPergunta;
        this.escola = escola;
        this.removePergunta = removePergunta;
    }

    public String getCriaPergunta() {
        return criaPergunta;
    }

    public void setCriaPergunta(String criaPergunta) {
        this.criaPergunta = criaPergunta;
    }

    public String getEscola() {
        return escola;
    }

    public void setEscola(String escola) {
        this.escola = escola;
    }

    public boolean isRemovePergunta() {
        return removePergunta;
    }

    public void setRemovePergunta(boolean removePergunta) {
        this.removePergunta = removePergunta;
    }
    
    
}
