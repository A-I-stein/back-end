/*
 * Projeto de Integração - A.I.Stein
 * CEFET-MG
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

import java.util.Date;

/**
 * Classe Modelo para um Administrador.
 * Tem como responsabilidade única servir como modelo para um administrador.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.2
 */

public class Admin extends User{
    
    private String escola;
    private int numAprovacoes, diasComoAdmin, materia;
    
    /**
     *  Construtor padrão.
     */
    public Admin() {
        super();
    }
    
    /**
     * Construtor com dados iniciais.
     * 
     * @param username único do Usuário.
     * @param nome do Usuário.
     * @param email do Usuário.
     * @param senha criada pelo Usuário.
     * @param dataNascimento (Data de Nascimento) do Usuário.
     * @param foto fornecida pelo Usuário.
     * @param genero do Usuário.
     * @param escola que o Administrador Frequenta
     * @param numAprovacoes (Número) de Conteúdos aprovados pelo Administrador
     * @param diasComoAdmin Quantidade de (Dias) que o Usuário é Administrador
     * @param materia na qual o Administrador é um especialista
     */
    public Admin(String username, String nome, String email, String senha,  
                 Date dataNascimento, int foto, int genero, String escola, 
                 int numAprovacoes, int diasComoAdmin, int materia) {
        super(nome, email, senha, username, dataNascimento, 'A', foto, genero);
        this.escola = escola;
        this.diasComoAdmin = diasComoAdmin;
        this.numAprovacoes = numAprovacoes;
        this.materia = materia;
    }
    
    /**
     * Método que retorna o valor do atributo escola.
     * 
     * @return escola do administrador
     */
    public String getEscola() {
        return escola;
    }

    /**
     * Método que define o valor do atributo escola
     * 
     * @param escola
     */
    public void setEscola(String escola) {
        this.escola = escola;
    }

    /**
     * Método que retorna o valor do atributo numAprovacoes.
     * 
     * @return numAprovacoes do administrador
     */
    public int getNumAprovacoes() {
        return numAprovacoes;
    }

    /**
     * Método que define o valor do atributo numAprovacoes
     * 
     * @param numAprovacoes
     */
    public void setNumAprovacoes(int numAprovacoes) {
        this.numAprovacoes = numAprovacoes;
    }

    /**
     * Método que retorna o valor do atributo diasComoAdmin.
     * 
     * @return diasComoAdmin do administrador
     */
    public int getDiasComoAdmin() {
        return diasComoAdmin;
    }

    /**
     * Método que define o valor do atributo diasComoAdmin
     * 
     * @param diasComoAdmin
     */
    public void setDiasComoAdmin(int diasComoAdmin) {
        this.diasComoAdmin = diasComoAdmin;
    }

    /**
     * Método que retorna o valor do atributo materia.
     * 
     * @return materia do administrador
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
