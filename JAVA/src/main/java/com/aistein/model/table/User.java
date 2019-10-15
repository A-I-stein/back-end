/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

import java.util.Date;

/**
 * Classe Modelo para um Usuário.
 * Tem como responsabilidade única servir como modelo para um usuário.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.8
 */

public class User {
    private String username;
    private String nome, email, senha;
    private Date dataCadastro, dataNascimento;
    private char idtTipo;
    private int foto, genero;

    /**
     *  Construtor padrão.
     */
    public User() {
        dataCadastro = new Date();
    }
    
    /**
     * Construtor com dados iniciais.
     * 
     * @param nome do Usuário.
     * @param email do Usuário.
     * @param senha criada pelo Usuário.
     * @param username único do Usuário.
     * @param dataNascimento (Data de Nascimento) do Usuário.
     * @param idtTipo (Identificador do Tipo) do Usuário.
                      EX: Professor ou Aluno
     * @param foto fornecida pelo Usuário.
     * @param genero do Usuário.
     */
    public User(String nome, String email, String senha, String username, 
                Date dataNascimento, char idtTipo, int foto, int genero) {

        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.username = username;
        dataCadastro = new Date();
        this.dataNascimento = dataNascimento;
        this.idtTipo = idtTipo;
        this.foto = foto;
        this.genero = genero;
    }

    /**
     * Método que retorna o valor do atributo nome.
     * 
     * @return nome do usuario
     */
    public String getNome() {
        return nome;
    }

    /**
     * Método que define o valor do atributo nome
     * 
     * @param nome
     */
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    /**
     * Método que retorna o valor do atributo email.
     * 
     * @return email do usuario
     */
    public String getEmail() {
        return email;
    }

    /**
     * Método que define o valor do atributo email
     * 
     * @param email
     */
    public void setEmail(String email) {
        this.email = email;
    }
    
    /**
     * Método que retorna o valor do atributo senha.
     * 
     * @return senha do usuario
     */
    public String getSenha() {
        return senha;
    }

    /**
     * Método que define o valor do atributo senha
     * 
     * @param senha
     */
    public void setSenha(String senha) {
        this.senha = senha;
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
     * Método que retorna o valor do atributo data de cadastro.
     * 
     * @return dataCadastro (data de cadastro) do usuario
     */
    public Date getDataCadastro() {
        return dataCadastro;
    }

    /**
     * Método que define o valor do atributo dataCadastro
     * 
     * @param dataCadastro
     */
    public void setDataCadastro() {
        dataCadastro = new Date();
    }    
    
    /**
     * Método que retorna o valor do atributo data de nascimento.
     * 
     * @return dataNascimento (data de nascimento) do usuario
     */
    public Date getDataNascimento() {
        return dataNascimento;
    }    

    /**
     * Método que define o valor do atributo dataNascimento
     * 
     * @param dataNascimento
     */
    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }
    
    /**
     * Método que retorna o valor do atributo identificador de tipo.
     * 
     * @return idtTipo (identificador de tipo) do usuario
     */
    public char getIdtTipo() {
        return idtTipo;
    }

    /**
     * Método que define o valor do atributo idtTipo
     * 
     * @param idtTipo
     */
    public void setIdtTipo(char idtTipo) {
        this.idtTipo = idtTipo;
    }
    
    /**
     * Método que retorna o valor do atributo foto.
     * 
     * @return foto do usuario
     */
    public int getFoto() {
        return foto;
    }

    /**
     * Método que define o valor do atributo foto
     * 
     * @param foto
     */
    public void setFoto(int foto) {
        this.foto = foto;
    }

    /**
     * Método que retorna o valor do atributo gênero.
     * 
     * @return gênero do usuario
     */
    public int getGenero() {
        return genero;
    }

    /**
     * Método que define o valor do atributo genero
     * 
     * @param genero
     */
    public void setGenero(int genero) {
        this.genero = genero;
    }
}
