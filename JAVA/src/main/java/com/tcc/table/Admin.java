/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tcc.table;

/**
 *
 * @author Arthur
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
