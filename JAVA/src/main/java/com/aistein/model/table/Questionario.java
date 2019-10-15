/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 * Classe Modelo para um Questionário.
 * Tem como responsabilidade única servir como modelo para um questionário.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class Questionario {
    private int codQuestionario, materia;

    /**
     *  Construtor padrão.
     */
    public Questionario() {
    }
    
    /**
     * Construtor com dados iniciais.
     *
     * @param codQuestionario (Código) único do questionário.
     * @param materia que o questionário abrange.
     */
    public Questionario(int codQuestionario, int materia) {

        this.codQuestionario = codQuestionario;
        this.materia = materia;
    }
    
    /**
     * Método que retorna o valor do atributo codQuestionario.
     * 
     * @return codQuestionario do questionário
     */
    public int getCodQuestionario() {
        return codQuestionario;
    }

    /**
     * Método que define o valor do atributo codQuestionario
     * 
     * @param codQuestionario
     */
    public void setCodQuestionario(int codQuestionario) {
        this.codQuestionario = codQuestionario;
    }

    /**
     * Método que retorna o valor do atributo materia.
     * 
     * @return materia do questionário
     */
    public int getMateria() {
        return materia;
    }

    /**
     * Método que define o valor do atributo materia
     * 
     * @param materia
     */
    public void setMateria(int materia) {
        this.materia = materia;
    }  
}
