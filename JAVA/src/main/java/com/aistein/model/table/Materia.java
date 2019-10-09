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
public class Materia {
    private String tipoMateria;

    public Materia() {
    }

    public Materia(String tipoMateria) {
        this.tipoMateria = tipoMateria;
    }

    public String getTipoMateria() {
        return tipoMateria;
    }

    public void setTipoMateria(String tipoMateria) {
        this.tipoMateria = tipoMateria;
    }
    
    
}
