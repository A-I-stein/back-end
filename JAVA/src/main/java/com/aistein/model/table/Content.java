/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

import java.util.Date;

/**
 * Classe Modelo para um Conteúdo.
 * Tem como responsabilidade única servir como modelo para um conteúdo.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.5
 */

public class Content {
    private int codConteudo, materia;
    private Stirng nomeConteudo, username, textoConteudo, resumoConteudo, 
                   fonteConteudo;
    private char tipoConteudo, statusConteudo;
    private Date dataPublicacao;

    public Content() {
    }

    public Content(int codConteudo, String nomeConteudo, Stirng textoConteudo, 
                   char statusConteudo, String username, int materia, 
                   Date dataPublicacao, String resumoConteudo,
                   char tipoConteudo, String fonteConteudo) {
        this.codConteudo = codConteudo;
        this.nomeConteudo = nomeConteudo;
        this.textoConteudo = textoConteudo;
        this.statusConteudo = statusConteudo;
        this.username = username;
        this.materia = materia;
        this.dataPublicacao = dataPublicacao;
        this.resumoConteudo = resumoConteudo;
        this.tipoConteudo = tipoConteudo;
        this.fonteConteudo = fonteConteudo;
    }

    public int getCodConteudo() {
        return codConteudo;
    }

    public void setCodConteudo(int codConteudo) {
        this.codConteudo = codConteudo;
    }

    public String getNomeConteudo() {
        return nomeConteudo;
    }

    public void setNomeConteudo(String nomeConteudo) {
        this.nomeConteudo = nomeConteudo;
    }

    public String getTextoConteudo() {
        return textoConteudo;
    }

    public void setTextoConteudo(String textoConteudo) {
        this.textoConteudo = textoConteudo;
    }

    public char getStatusConteudo() {
        return statusConteudo;
    }

    public void setStatusConteudo(char statusConteudo) {
        this.statusConteudo = statusConteudo;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getMateria() {
        return materia;
    }

    public void setMateria(int materia) {
        this.materia = materia;
    }

    public Date getDataPublicacao() {
        return dataPublicacao;
    }

    public void setDataPublicacao(Date dataPublicacao) {
        this.dataPublicacao = dataPublicacao;
    }

    public String getResumoConteudo() {
        return resumoConteudo;
    }

    public void setResumoConteudo(String resumoConteudo) {
        this.resumoConteudo = resumoConteudo;
    }

    public char getTipoConteudo() {
        return tipoConteudo;
    }

    public void setTipoConteudo(char tipoConteudo) {
        this.tipoConteudo = tipoConteudo;
    }

    public String getFonteConteudo() {
        return fonteConteudo;
    }

    public void setFonteConteudo(String fonteConteudo) {
        this.fonteConteudo = fonteConteudo;
    }
}
