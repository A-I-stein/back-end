/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

import java.util.Date;

/**
 * Classe Modelo para um Conteúdo.
 * Tem como responsabilidade única servir como modelo para um conteúdo.
 *
 * @author Arthur Marcolino, Gabriel Cruz
 * @version 1.7
 */

@Table("Conteudo")
public class Conteudo {
    @Id
    private int codConteudo;
    private int  materia;
    private String nomeConteudo, username, textoConteudo, resumoConteudo, 
                   fonteConteudo;
    private char tipoConteudo, statusConteudo;
    private Date dataPublicacao;

    /**
     *  Construtor padrão.
     */
    public Conteudo() {
    }

    /**
     * Construtor com dados iniciais.
     * 
     * @param codConteudo (Código) único do Conteúdo.
     * @param nomeConteudo (Nome) do Contéudo.
     * @param textoConteudo (Texto) do Conteúdo.
     * @param statusConteudo (Status) do Conteúdo no momento.
                              EX: Aprovado ou Reprovado
     * @param username do usuário responsável pelo Conteúdo.
     * @param materia na qual o Conteúdo se encaixa.
     *                EX: Movimento ou Som & Ondas
     * @param dataPublicacao (Data de Publicação) do Conteúdo.
     * @param resumoConteudo (Resumo) do Conteúdo.
     * @param tipoConteudo (Tipo) do Conteúdo.
     *                      EX: Original ou Criado
     * @param fonteConteudo (Fonte) do Conteúdo.
     */
    public Conteudo(int codConteudo, String nomeConteudo, String textoConteudo, 
                   char statusConteudo, String username, int materia, 
                   Date dataPublicacao, String resumoConteudo,
                   char tipoConteudo, String fonteConteudo) {
        this.codConteudo = codConteudo;
        this.nomeConteudo = nomeConteudo;
        this.textoConteudo = textoConteudo;
        this.statusConteudo = statusConteudo;
        this.username = username;
        this.materia = materia;
        this.dataPublicacao = dataPublicacao;
        this.resumoConteudo = resumoConteudo;
        this.tipoConteudo = tipoConteudo;
        this.fonteConteudo = fonteConteudo;
    }
    
    /**
     * Método que retorna o valor do atributo codConteudo.
     * 
     * @return codConteudo do conteudo
     */
    public int getCodConteudo() {
        return codConteudo;
    }

    /**
     * Método que define o valor do atributo codConteudo
     * 
     * @param codConteudo
     */
    public void setCodConteudo(int codConteudo) {
        this.codConteudo = codConteudo;
    }
    
    /**
     * Método que retorna o valor do atributo nomeConteudo.
     * 
     * @return nomeConteudo do conteudo
     */
    public String getNomeConteudo() {
        return nomeConteudo;
    }
    
    /**
     * Método que define o valor do atributo nomeConteudo
     * 
     * @param nomeConteudo
     */
    public void setNomeConteudo(String nomeConteudo) {
        this.nomeConteudo = nomeConteudo;
    }

    /**
     * Método que retorna o valor do atributo textoConteudo.
     * 
     * @return textoConteudo do conteudo
     */
    public String getTextoConteudo() {
        return textoConteudo;
    }

    /**
     * Método que define o valor do atributo textoConteudo
     * 
     * @param textoConteudo
     */
    public void setTextoConteudo(String textoConteudo) {
        this.textoConteudo = textoConteudo;
    }

    /**
     * Método que retorna o valor do atributo statusConteudo.
     * 
     * @return statusConteudo do conteudo
     */
    public char getStatusConteudo() {
        return statusConteudo;
    }

    /**
     * Método que define o valor do atributo statusConteudo
     * 
     * @param statusConteudo
     */
    public void setStatusConteudo(char statusConteudo) {
        this.statusConteudo = statusConteudo;
    }

    /**
     * Método que retorna o valor do atributo username.
     * 
     * @return username do conteudo
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
     * Método que retorna o valor do atributo materia.
     * 
     * @return materia do conteudo
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

    /**
     * Método que retorna o valor do atributo dataPublicacao.
     * 
     * @return dataPublicacao do conteudo
     */
    public Date getDataPublicacao() {
        return dataPublicacao;
    }

    /**
     * Método que define o valor do atributo dataPublicacao
     * 
     * @param dataPublicacao
     */
    public void setDataPublicacao(Date dataPublicacao) {
        this.dataPublicacao = dataPublicacao;
    }

    /**
     * Método que retorna o valor do atributo resumoConteudo.
     * 
     * @return resumoConteudo do conteudo
     */
    public String getResumoConteudo() {
        return resumoConteudo;
    }

    /**
     * Método que define o valor do atributo resumoConteudo
     * 
     * @param resumoConteudo
     */
    public void setResumoConteudo(String resumoConteudo) {
        this.resumoConteudo = resumoConteudo;
    }

    /**
     * Método que retorna o valor do atributo tipoConteudo.
     * 
     * @return tipoConteudo do conteudo
     */
    public char getTipoConteudo() {
        return tipoConteudo;
    }

    /**
     * Método que define o valor do atributo tipoConteudo
     * 
     * @param tipoConteudo
     */
    public void setTipoConteudo(char tipoConteudo) {
        this.tipoConteudo = tipoConteudo;
    }

    /**
     * Método que retorna o valor do atributo fonteConteudo.
     * 
     * @return fonteConteudo do conteudo
     */
    public String getFonteConteudo() {
        return fonteConteudo;
    }

    /**
     * Método que define o valor do atributo fonteConteudo
     * 
     * @param fonteConteudo
     */
    public void setFonteConteudo(String fonteConteudo) {
        this.fonteConteudo = fonteConteudo;
    }
}
