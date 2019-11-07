/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 * Classe Modelo para um Jogo.
 * Tem como responsabilidade única servir como modelo para um jogo.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.5
 */

public class Jogo {
    private Integer codJogo;
    private String nomeJogo;
    private String urlJogo;
    private String creditosJogo;
    private Integer codImgJogo;
    private Integer codMatJogo;

    /**
     *  Construtor padrão.
     */
    public Jogo() {
    }

    /**
     * Construtor com dados iniciais.
     * 
     * @param codJogo (Código) único do Jogo.
     * @param nomeJogo (Nome) do Jogo.
     * @param urlJogo (URL) na qual é possivel encontrar o Jogo.
     * @param creditosJogo nome das Pessoas responsáveis pelo Jogo.
     * @param codImgJogo Código da Imagem que representa o jogo.
     * @param codMatJogo Código da Matéria a qual pertence o Jogo.
     */
    public Jogo(Integer codJogo, String nomeJogo, String urlJogo, String creditosJogo, Integer codImgJogo, Integer codMatJogo) {
        this.codJogo = codJogo;
        this.nomeJogo = nomeJogo;
        this.urlJogo = urlJogo;
        this.creditosJogo = creditosJogo;
        this.codImgJogo = codImgJogo;
        this.codMatJogo = codMatJogo;
    }

    public Integer getCodJogo() {
        return codJogo;
    }

    public void setCodJogo(Integer codJogo) {
        this.codJogo = codJogo;
    }

    public String getNomeJogo() {
        return nomeJogo;
    }

    public void setNomeJogo(String nomeJogo) {
        this.nomeJogo = nomeJogo;
    }

    public String getUrlJogo() {
        return urlJogo;
    }

    public void setUrlJogo(String urlJogo) {
        this.urlJogo = urlJogo;
    }

    public String getCreditosJogo() {
        return creditosJogo;
    }

    public void setCreditosJogo(String creditosJogo) {
        this.creditosJogo = creditosJogo;
    }

    public Integer getCodImgJogo() {
        return codImgJogo;
    }

    public void setCodImgJogo(Integer codImgJogo) {
        this.codImgJogo = codImgJogo;
    }

    public Integer getCodMatJogo() {
        return codMatJogo;
    }

    public void setCodMatJogo(Integer codMatJogo) {
        this.codMatJogo = codMatJogo;
    }

    @Override
    public String toString() {
        return "Jogo{" + "codJogo=" + codJogo + ", nomeJogo=" + nomeJogo + ", urlJogo=" + urlJogo + ", creditosJogo=" + creditosJogo + ", codImgJogo=" + codImgJogo + ", codMatJogo=" + codMatJogo + '}';
    }
    
}
