/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 * Classe Modelo para uma Pergunta.
 * Tem como responsabilidade única servir como modelo para uma pergunta.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.2
 */

public class Pergunta{
    private int codPergunta, codQuestionario;
    private String descPergunta;

    /**
     *  Construtor padrão.
     */
    public Pergunta() {
    }
    
    /**
     * Construtor com dados iniciais.
     *
     * @param codPergunta (Código) único da pergunta.
     * @param descPergunta (Descrição) da pergunta, ou seja, a pergunta.
     * @param codQuestionario (Código) do questionário ao qual a pergunta 
     *                         pertence.
     */
    public Pergunta(int codPergunta, String descPergunta, int codQuestionario) {

        this.codPergunta = codPergunta;
        this.descPergunta = descPergunta;
        this.codQuestionario = codQuestionario;
    }
    
    /**
     * Método que retorna o valor do atributo codPergunta.
     * 
     * @return codPergunta da pergunta
     */
    public int getCodPergunta() {
        return codPergunta;
    }

    /**
     * Método que define o valor do atributo codPergunta
     * 
     * @param codPergunta
     */
    public void setCodPergunta(int codPergunta) {
        this.codPergunta = codPergunta;
    }

    /**
     * Método que retorna o valor do atributo descPergunta.
     * 
     * @return descPergunta da matéria
     */
    public String getDescPergunta() {
        return descPergunta;
    }

    /**
     * Método que define o valor do atributo descPergunta
     * 
     * @param descPergunta
     */
    public void setDescPergunta(String descPergunta) {
        this.descPergunta = descPergunta;
    }  
    
    /**
     * Método que retorna o valor do atributo codQuestionario.
     * 
     * @return codQuestionario a qual a pergunta pertence
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
}

