/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;


/**
 * Classe Modelo para uma Imagem.
 * Tem como responsabilidade única servir como modelo para uma imagem.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class Imagem {
    private int codImagem;
    private String caminhoImagem;

    /**
     *  Construtor padrão.
     */
    public Imagem() {
    }
    
    /**
     * Construtor com dados iniciais.
     *
     * @param codImagem (Código) único da imagem.
     * @param caminhoImagem (Caminho) usado para localizar a imagem.
     */
    public Imagem(int codImagem, String caminhoImagem) {

        this.codImagem = codImagem;
        this.caminhoImagem = caminhoImagem;
    }
    
    /**
     * Metodo que retorna o valor do atributo codImagem.
     * 
     * @return codImagem da imagem
     */
    public int getCodImagem() {
        return codImagem;
    }

    /**
     * Metodo que define o valor do atributo codImagem
     * 
     * @param codImagem
     */
    public void setCodImagem(int codImagem) {
        this.codImagem = codImagem;
    }

    /**
     * Metodo que retorna o valor do atributo caminhoImagem.
     * 
     * @return caminhoImagem da imagem
     */
    public String getNomeGenero() {
        return caminhoImagem;
    }

    /**
     * Metodo que define o valor do atributo caminhoImagem
     * 
     * @param caminhoImagem
     */
    public void setNomeGenero(String caminhoImagem) {
        this.caminhoImagem = caminhoImagem;
    }  
}
