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
 * Classe Conexão com a Materia e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Materia com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.4
 */

public class MateriaAcessService {

    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String CODIGO_MATERIA;
    private static final String NOME_MATERIA;


    //Inicialização das constantes
    static{
        CODIGO_MATERIA = "Codigo_Materia";
        NOME_MATERIA = "Nome_materia";
        
    }
    
    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Materia encontrados utilizando a query recebida.
     */
    public static ArrayList<Materia> get(String query) {
        ArrayList<Materia> materias = new ArrayList<>();

        try {
            
            result = SQL.query(query);

            if (result.next()) {
                do {
                    Materia materia = new Materia(
                            result.getInt(CODIGO_MATERIA),
                            result.getString(NOME_MATERIA));
                    
                    materias.add(materia);

                } while (result.next());
            } else {
                System.out.println("Nada encontrado com a query fornecida.");
                return null;
            }

        } catch (SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }

        return materias;
    }
    
    /**
     * Pesquisa no bd usando o Codigo da Materia.
     * @param codMateria
     * @return um objeto Materia que corresponde ao codMateria recebido.
     */
    public static Materia getMateriaFromCodMateria(int codMateria) {
        
        ArrayList<Materia> materias = get("SELECT * FROM materia WHERE"
                                     + CODIGO_MATERIA + " = " + codMateria);
        
        if (materias==null){
            System.out.println("Nenhuma materia encontrada com esse Código" + 
                    codMateria);
            return null;
        }
        return materias.get(0);
    }
    
    /**
     * Pesquisa no bd todas as materias.
     * @return todos os objetos Materia em um ArrayList.
     */
    public static ArrayList<Materia> getAll() {
        return get("SELECT * FROM materia");
    }
    
    /**
     * Deleta uma materia do bd usando o codigo da mesma.
     * @param codMateria do materia a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codMateria) {
        String stm = "DELETE FROM materia WHERE " + CODIGO_MATERIA + " = "
                   + codMateria;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere uma Materia no bd
     * @param materia
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Materia materia){

        String stm = "INSERT INTO materia (" + CODIGO_MATERIA + ", " 
                   + NOME_MATERIA + ") VALUES ('" + materia.getCodMateria() 
                   + "', '" + materia.getNomeMateria() + "');" ;

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza a materia no bd correspondente ao objeto Materia recebido
     * @param materia
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Materia materia){
         
        String stm = "UPDATE materia SET (" + NOME_MATERIA + ") = ("
                   + materia.getNomeMateria()+")" + " WHERE " + CODIGO_MATERIA
                   + " = " + materia.getCodMateria();

        return SQL.query(stm) == null;
    } 
}
