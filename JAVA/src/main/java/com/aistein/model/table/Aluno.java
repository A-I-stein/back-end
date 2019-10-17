/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

import java.util.Date;

/**
 * Classe Modelo para um Aluno.
 * Tem como responsabilidade única servir como modelo para um aluno.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.2
 */

public class Aluno extends User{
    
    private String username, escola;
    
    /**
     *  Construtor padrão.
     */
    public Aluno() {
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
     * @param escola que o Aluno Frequenta
     */
    public Aluno(String username, String nome, String email, String senha,  
                 Date dataNascimento, int foto, int genero, String escola) {
        super(nome, email, senha, username, dataNascimento, 'E', foto, genero);
        this.escola = escola;
        this.username = username;
    }
    
    /**
     * Método que retorna o valor do atributo escola.
     * 
     * @return escola do usuario
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
}
