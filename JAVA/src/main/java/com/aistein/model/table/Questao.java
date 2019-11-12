/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 * Classe Modelo para uma Questão.
 * Tem como responsabilidade única servir como modelo para uma questão
 *
 * @author Gabriel Cruz
 * @version 1.5
 */
 
 public class Questao {
    
    private int codQuestionario;
    private int codQuestao;
    private String descPergunta;
    private String descRespCorreta;
    private String descRespIncorreta1;
    private String descRespIncorreta2;
    private String descRespIncorreta3;

    /**
     *  Construtor padrão.
     */
    public Questao() {
    }
    
    /**
     * Construtor com dados iniciais.
     *
     * @param codQuestionario (Código) do questionário ao qual a questao
     *                                 pertence.
     * @param codQuestao (Código) único da questão.
     * @param descPergunta (Descrição) da pergunta, ou seja, a pergunta.
     * @param descRespCorreta (Descrição) da resposta correta.
     * @param descRespIncorreta1 (Descrição) da resposta incorreta 1.
     * @param descRespIncorreta2 (Descrição) da resposta incorreta 2.
     * @param descRespIncorreta3 (Descrição) da resposta incorreta 3.
     */
    public Questao(int codQuestionario, int codQuestao, String descPergunta, 
                   String descRespCorreta, String descRespIncorreta1, 
                   String descRespIncorreta2,  String descRespIncorreta3) {

        this.codQuestionario = codQuestionario;
        this.codQuestao = codQuestao;
        this.descPergunta = descPergunta;
        this.descRespCorreta = descRespCorreta;
        this.descRespIncorreta1 = descRespIncorreta1;
        this.descRespIncorreta2 = descRespIncorreta2;
        this.descRespIncorreta3 = descRespIncorreta3;
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
    
    /**
     * Método que retorna o valor do atributo codQuestao.
     * 
     * @return codQuestao da pergunta
     */
    public int getCodQuestao() {
        return codQuestao;
    }

    /**
     * Método que define o valor do atributo codQuestao
     * 
     * @param codQuestao
     */
    public void setCodQuestao(int codQuestao) {
        this.codQuestao = codQuestao;
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
     * Método que retorna o valor do atributo descRespCorreta.
     * 
     * @return descRespCorreta da matéria
     */
    public String getDescRespCorreta() {
        return descRespCorreta;
    }

    /**
     * Método que define o valor do atributo descRespCorreta
     * 
     * @param descRespCorreta
     */
    public void setDescRespCorreta(String descRespCorreta) {
        this.descRespCorreta = descRespCorreta;
    }  

    /**
     * Método que retorna o valor do atributo descRespIncorreta1.
     * 
     * @return descRespIncorreta1 da matéria
     */
    public String getDescRespIncorreta1() {
        return descRespIncorreta1;
    }

    /**
     * Método que define o valor do atributo descRespIncorreta1
     * 
     * @param descRespIncorreta1
     */
    public void setDescRespIncorreta1(String descRespIncorreta1) {
        this.descRespIncorreta1 = descRespIncorreta1;
    }  
     
    /**
     * Método que retorna o valor do atributo descRespIncorreta2.
     * 
     * @return descRespIncorreta2 da matéria
     */
    public String getDescRespIncorreta2() {
        return descRespIncorreta2;
    }

    /**
     * Método que define o valor do atributo descRespIncorreta2
     * 
     * @param descRespIncorreta2
     */
    public void setDescRespIncorreta2(String descRespIncorreta2) {
        this.descRespIncorreta2 = descRespIncorreta2;
    }
     
    /**
     * Método que retorna o valor do atributo descRespIncorreta3.
     * 
     * @return descRespIncorreta3 da matéria
     */
    public String getDescRespIncorreta3() {
        return descRespIncorreta3;
    }

    /**
     * Método que define o valor do atributo descRespIncorreta3
     * 
     * @param descRespIncorreta3
     */
    public void setDescRespIncorreta3(String descRespIncorreta3) {
        this.descRespIncorreta3 = descRespIncorreta3;
    }

}

