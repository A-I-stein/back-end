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
public class Content {
    @Id
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
