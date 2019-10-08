/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 *
 * @author Arthur
 */
public class User {
    @Id
    private String username;
    private String nome, email, senha;
    private Date dataCadastro, dataNascimento;
    private char idtTipo;
    private int foto, genero;

    public User() {
    }

    public User(String nome, String email, String senha, long ID) {
        this.nome = nome;
        this.email = email;
        this.senha = senha;
        this.ID = ID;
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

    public long getID() {
        return ID;
    }

    public void setID(long ID) {
        this.ID = ID;
    }
    
    
}
