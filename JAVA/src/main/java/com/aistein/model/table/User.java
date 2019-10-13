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
 * @version 1.7
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

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public Date getDataCadastro() {
        return dataCadastro;
    }
    public void setDataCadastro() {
        dataCadastro = new Date();;
    }

    
    public Date getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(Date dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public char getIdtTipo() {
        return idtTipo;
    }

    public void setIdtTipo(char idtTipo) {
        this.idtTipo = idtTipo;
    }

    public int getFoto() {
        return foto;
    }

    public void setFoto(int foto) {
        this.foto = foto;
    }

    public int getGenero() {
        return genero;
    }

    public void setGenero(int genero) {
        this.genero = genero;
    }
}
