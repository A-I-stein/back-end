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
public class Content {
    private int codConteudo;
    private char tipoConteudo;

    public Content() {
    }

    public Content(int codConteudo, char tipoConteudo) {
        this.codConteudo = codConteudo;
        this.tipoConteudo = tipoConteudo;
    }

    public int getCodConteudo() {
        return codConteudo;
    }

    public void setCodConteudo(int codConteudo) {
        this.codConteudo = codConteudo;
    }

    public char getTipoConteudo() {
        return tipoConteudo;
    }

    public void setTipoConteudo(char tipoConteudo) {
        this.tipoConteudo = tipoConteudo;
    }
    
    
}
