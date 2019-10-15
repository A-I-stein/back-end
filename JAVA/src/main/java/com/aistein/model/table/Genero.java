/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 * Classe Modelo para um Gênero.
 * Tem como responsabilidade única servir como modelo para um gênero.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class Genero {
    private int codGenero;
    private String nomeGenero;

    /**
     *  Construtor padrão.
     */
    public Genero() {
    }
    
    /**
     * Construtor com dados iniciais.
     *
     * @param codGenero (Código) único do gênero.
     * @param nomeGenero (Nome) do Gênero.
     */
    public Genero(int codGenero, String nomeGenero) {

        this.codGenero = codGenero;
        this.nomeGenero = nomeGenero;
    }
    
    /**
     * Método que retorna o valor do atributo codGenero.
     * 
     * @return codGenero do gênero
     */
    public int getCodsGenero() {
        return codGenero;
    }

    /**
     * Método que define o valor do atributo codGenero
     * 
     * @param codGenero
     */
    public void setCodsGenero(int codGenero) {
        this.codGenero = codGenero;
    }

    /**
     * Método que retorna o valor do atributo nomeGenero.
     * 
     * @return nomeGenero do gênero
     */
    public String getNomeGenero() {
        return nomeGenero;
    }

    /**
     * Método que define o valor do atributo nomeGenero
     * 
     * @param nomeGenero
     */
    public void setNomeGenero(String nomeGenero) {
        this.nomeGenero = nomeGenero;
    }  
}
