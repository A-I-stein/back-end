/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

import java.util.Date;

/**
 * Classe Modelo para um Professor.
 * Tem como responsabilidade única servir como modelo para um professor.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.2
 */

public class Professor extends User{

    private String username;
    private String escola;
    private int materia;
    
    /**
     *  Construtor padrão.
     */
    public Professor() {
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
     * @param escola que o Professor Frequenta
     * @param materia na qual o Professor é um especialista
     */
    public Professor(String username, String nome, String email, String senha,  
                 Date dataNascimento, int foto, int genero, String escola, 
                 int materia) {
        super(nome, email, senha, username, dataNascimento, 'P', foto, genero);
        this.escola = escola;
        this.username = username;
        this.materia = materia;
    }
    
  /**
     * Método que retorna o valor do atributo username.
     * 
     * @return username do usuario
     */
    public String getUsername() {
        return username;
    }

    /**
     * Método que define o valor do atributo username
     * 
     * @param username
     */
    public void setUsername(String username) {
        this.username = username;
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
