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
@Table("Jogo")
public class Jogo {
    @Id
    private Integer codJogo;
    private String nomJogo;
    private String urlJogo;
    private String credJogo;
    private Integer codImgJogo;
    private Integer codMatJogo;

    public Jogo() {
    }

    public Jogo(Integer codJogo, String nomJogo, String urlJogo, String credJogo, Integer codImgJogo, Integer codMatJogo) {
        this.codJogo = codJogo;
        this.nomJogo = nomJogo;
        this.urlJogo = urlJogo;
        this.credJogo = credJogo;
        this.codImgJogo = codImgJogo;
        this.codMatJogo = codMatJogo;
    }

    public Integer getCodJogo() {
        return codJogo;
    }

    public void setCodJogo(Integer codJogo) {
        this.codJogo = codJogo;
    }

    public String getNomJogo() {
        return nomJogo;
    }

    public void setNomJogo(String nomJogo) {
        this.nomJogo = nomJogo;
    }

    public String getUrlJogo() {
        return urlJogo;
    }

    public void setUrlJogo(String urlJogo) {
        this.urlJogo = urlJogo;
    }

    public String getCredJogo() {
        return credJogo;
    }

    public void setCredJogo(String credJogo) {
        this.credJogo = credJogo;
    }

    public Integer getCodImgJogo() {
        return codImgJogo;
    }

    public void setCodImgJogo(Integer codImgJogo) {
        this.codImgJogo = codImgJogo;
    }

    public Integer getCodMatJogo() {
        return codMatJogo;
    }

    public void setCodMatJogo(Integer codMatJogo) {
        this.codMatJogo = codMatJogo;
    }

    @Override
    public String toString() {
        return "codJogo=" + codJogo + "\n nomJogo=" + nomJogo + "\n urlJogo=" + urlJogo + "\n credJogo=" + credJogo + "\n codImgJogo=" + codImgJogo + "\n codMatJogo=" + codMatJogo;
    }
    
    
    
    

  
}
