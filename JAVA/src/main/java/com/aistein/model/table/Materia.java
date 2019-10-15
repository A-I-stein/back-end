/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 * Classe Modelo para uma Matéria.
 * Tem como responsabilidade única servir como modelo para uma matéria.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.2
 */

public class Materia{
    private int codMateria;
    private String nomeMateria;

    /**
     *  Construtor padrão.
     */
    public Materia() {
    }
    
    /**
     * Construtor com dados iniciais.
     *
     * @param codMateria (Código) único da matéria.
     * @param nomeMateria (Nome) da matéria.
     */
    public Materia(int codMateria, String nomeMateria) {

        this.codMateria = codMateria;
        this.nomeMateria = nomeMateria;
    }
    
    /**
     * Método que retorna o valor do atributo codMateria.
     * 
     * @return codMateria da matéria
     */
    public int getCodMateria() {
        return codMateria;
    }

    /**
     * Método que define o valor do atributo codMateria
     * 
     * @param codMateria
     */
    public void setCodMateria(int codMateria) {
        this.codMateria = codMateria;
    }

    /**
     * Método que retorna o valor do atributo nomeMateria.
     * 
     * @return nomeMateria da matéria
     */
    public String getNomeMateria() {
        return nomeMateria;
    }

    /**
     * Método que define o valor do atributo nomeMateria
     * 
     * @param nomeMateria
     */
    public void setNomeMateria(String nomeMateria) {
        this.nomeMateria = nomeMateria;
    }  
}
