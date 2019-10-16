/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Gwnero;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com o Genero e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Gênero com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class GeneroAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String CODIGO_GENERO;
    private static final String NOME_GENERO;
    
    //Inicialização das constantes
    static{
        CODIGO_GENERO = "Codigo_Genero";
        NOME_GENERO = "Nome_Genero";
    }

    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Genero encontrados utilizando a query recebida.
     */
    public static ArrayList<Genero> get(String query){
        
        ArrayList<Genero> generos = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Genero genero=new Genero(
                            result.getString(CODIGO_GENERO), 
                            result.getString(NOME_GENERO));
                                        
                    generos.add(genero);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return generos;
    }
    
    /**
     * Pesquisa no bd usando o Codigo do Gênero.
     * @param username
     * @return um objeto Usuario que corresponde ao username recebido.
     */
    public static Content getGeneroFromCodGenero(String codGenero) {
        
        ArrayList<Genero> generos = get("SELECT * FROM genero WHERE"
                                     + CODIGO_GENERO + "=" + codGenero);
        
        if (generos==null){
            System.out.println("Nenhum gênero encontrado com esse Código" + 
                    codGenero);
            return null;
        }
        return generos.get(0);
    }
    
    /**
     * Pesquisa no bd todas os gêneros.
     * @return todos os objetos Genero em um ArrayList.
     */
    public static ArrayList<Genero> getAll() {
        return get("SELECT * FROM genero");
    }
    
    /**
     * Deleta um genero do bd usando o codigo do mesmo.
     * @param codGenero do genero a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(String codGenero) {
        String stm = "DELETE FROM genero WHERE " + CODIGO_GENERO + " = "
                   + codGenero;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Genero no bd
     * @param genero
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Genero genero){

        String stm = "INSERT INTO genero (" + CODIGO_GENERO + ", " + NOME_GENERO
                   + ") VALUES ('" + genero.getCodGenero() + "', '" 
                   + genero.getNomeGenero() + "');" ;

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza o gênero no bd correspondente ao objeto Genero recebido
     * @param genero
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Genero genero){
         
        String stm = "UPDATE usuario SET (" + NOME_GENERO + ") = ("
                   + usuario.getNomeGenero()+")" + " WHERE username = "
                   + usuario.getUsername();

        return SQL.query(stm) == null;
    }
}
