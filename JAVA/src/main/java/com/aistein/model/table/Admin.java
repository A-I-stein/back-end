/*
 * Projeto de Integração - A.I.Stein
 * CEFET-MG
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.table;

/**
 *
 * @author Arthur Marcolino
 */
public class Admin {
    private String Materia;

    public Admin() {
    }

    public Admin(String Materia) {
        this.Materia = Materia;
    }

    public String getMateria() {
        return Materia;
    }

    public void setMateria(String Materia) {
        this.Materia = Materia;
    }
    
    public boolean RemoveConteudo(){
        return false;
    }
    
    public boolean RemoveConta(){
        return false;
    }
}
