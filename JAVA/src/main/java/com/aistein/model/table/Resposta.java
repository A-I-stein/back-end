/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 * Classe Modelo para uma Resposta.
 * Tem como responsabilidade única servir como modelo para uma resposta.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.2
 */

public class Resposta{
    private int codResposta, codPergunta, codQuestionario;
    private String descResposta;
    private char respCorreta;

    /**
     *  Construtor padrão.
     */
    public Resposta() {
    }
    
    /**
     * Construtor com dados iniciais.
     *
     * @param codResposta (Código) único da resposta.
     * @param descResposta (Descrição) da resposta, ou seja, a resposta.
     * @param codQuestionario (Código) do questionário ao pertence a pergunta 
     *                         que a resposta pertence.
     * @param codPergunta (Código) do pergunta ao qual a resposta 
     *                         pertence.
     * @param respCorreta mostra se a resposta é a correta para a pergunta.
     */
    public Resposta(int codResposta, String descResposta, int codPergunta, 
            int codQuestionario, boolean respCorreta) {

        this.codResposta = codResposta;
        this.descResposta = descResposta;
        this.codPergunta = codPergunta;
        this.codQuestionario = codQuestionario;
        this.respCorreta = respCorreta;        
    }
    
    /**
     * Método que retorna o valor do atributo codResposta.
     * 
     * @return codResposta da resposta
     */
    public int getCodResposta() {
        return codResposta;
    }

    /**
     * Método que define o valor do atributo codResposta
     * 
     * @param codResposta
     */
    public void setCodResposta(int codResposta) {
        this.codResposta = codResposta;
    }

    /**
     * Método que retorna o valor do atributo descResposta.
     * 
     * @return descResposta da matéria
     */
    public String getDescResposta() {
        return descResposta;
    }

    /**
     * Método que define o valor do atributo descResposta
     * 
     * @param descResposta
     */
    public void setDescResposta(String descResposta) {
        this.descResposta = descResposta;
    }  
    
    /**
     * Método que retorna o valor do atributo codQuestionario.
     * 
     * @return codQuestionario a qual a resposta pertence
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
     * Método que retorna o valor do atributo codPergunta.
     * 
     * @return codPergunta a qual a resposta pertence
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
     * Método que retorna o valor do atributo respCorreta.
     * 
     * @return respCorreta a qual a resposta pertence
     */
    public int getRespCorreta() {
        return respCorreta;
    }

    /**
     * Método que define o valor do atributo respCorreta
     * 
     * @param respCorreta
     */
    public void setRespCorreta(int respCorreta) {
        this respCorreta = respCorreta;
    }
}
