/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Materia;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Arthur
 */
public class MateriaAcessService {

    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String COD_MATERIA;
    private static final String NOME_MATERIA;


    //Inicialização das constantes
    static{
        COD_MATERIA = "codigo_Materia";
        NOME_MATERIA = "nome_materia";
        
    }
    
    
    public static ArrayList<Materia> getAllMateria(){
  
        ArrayList<Materia> materias = get("");
        if (materias == null) {
            System.out.println("NENHUM JOGO FOI ENCONTRADO NO BANCO DE DADOS");
            return null;
        }
        
        return materias;
        
    }
    
      public static Materia getMateriaById(int id){
  
        ArrayList<Materia> materias = get("where " + COD_MATERIA + "=" + id);
        if (materias == null) {
            System.out.println("NENHUM JOGO FOI ENCONTRADO NO BANCO DE DADOS");
            return null;
        }
        
        return materias.get(0);
        
    }
    
    
    public static ArrayList<Materia> get(String condicao) {
        ArrayList<Materia> materias = new ArrayList<>();

        try {
            
            result = SQL.query("SELECT * FROM materia " + condicao);

            if (result.next()) {
                do {
                    Materia materia = new Materia();
                    materia.setCodMateria(Integer.parseInt(
                            result.getString(COD_MATERIA)));
                    materia.setNomeMateria(
                            result.getString(NOME_MATERIA));
                    materias.add(materia);

                } while (result.next());
            } else {
                System.out.println("NENHUM JOGO COM CONDIÇÃO: "
                        + condicao + " FOI ENCONTRADO NO BANCO DE DADOS");
                return null;
            }

        } catch (SQLException ex) {
            System.out.println(ex + " at getRowFromId");
            return null;
        }

        return materias;
    }
    
}
