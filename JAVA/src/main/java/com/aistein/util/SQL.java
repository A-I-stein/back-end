
package com.aistein.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Classe que reúne ações básicas para a realização de requisições ao banco de 
 * dados.
 * 
 * @author Gabriel Cruz
 * @version 1.1
 */
public final class SQL {
    
    private static final Connection CONNECTION;
    
    static {
        CONNECTION = new SQLConnection().getConnection();
    }
    
    private SQL() {}
    
    /**
     * Realiza uma simples requisição ao banco de dados.
     * 
     * @param query a string de requisição, que deve estar de acordo com a
     *              implementação sendo utilizada
     * @return      o conjunto de resutados da requisição
     */
    public static ResultSet query(String query) {
        
        try {
            Statement stmt = CONNECTION.createStatement();
            stmt.execute(query);
            return stmt.getResultSet();
        } catch (SQLException sqlex) {
            System.out.println(sqlex);
            return null;
        }
        
    }   
    
    /**
     * Retorna a conexão com o banco de dados. Ela é instanciada somente
     * uma vez, durante o carregamento da classe e deve, portanto, ser
     * utilizada estaticamente por todo o programa.
     * 
     * @return a conexão com o banco de dados
     */
    public static Connection getConnection() {
        return CONNECTION;
    }
    
}