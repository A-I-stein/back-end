
package com.aistein.util;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * Reúne ações básicas para a realização de requisições ao banco de dados.
 * 
 * @author Arthur
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
     * Faz a inserção dos dados de um objeto para a respective tabela.
     * 
     * @param objeto com os dados a serem inseridos
     * @return       se a operação ocorreu com sucesso ou não
     * @throws       NotTableException
     */
    public static boolean insert(Object objeto) throws NotTableException {
        
        Map<String, String> campos = getCampos(objeto, true);
        String[] nomesCampos = campos.keySet().stream().toArray(String[]::new);
        String[] valoresCampos = campos.values().stream().toArray(String[]::new);
        String sql = "INSERT INTO " + getNomeTabela(objeto.getClass())
                +" (" + String.join(", ", nomesCampos) + ")"
                +  "  VALUES (" + String.join(", ", valoresCampos) + ")";
        return query(sql) == null;
        
    }

    /**
     * Realiza a atualização dos dados de um objeto na respectiva tabela.
     *  
     * @param objeto com os dados a serem atualizados
     * @return       se a operação ocorreu com sucesso ou não
     * @throws       NotTableException
     */
    public static boolean update(Object objeto) throws NotTableException {
        
        Map<String, String> campos = getCampos(objeto, false);
        String nomeId = getNomeId(objeto.getClass());
        String id = campos.remove(String.format("'%s'", nomeId));
        
        if (id == null || Integer.parseInt(id) < 0)
            return false;
        
        String[] camposUpdate = campos.keySet().stream()
                .map(nome -> String.format("%s = %s", nome, campos.get(nome)))
                .toArray(String[]::new);
        String sql = "UPDATE '" + getNomeTabela(objeto.getClass())
                + "' SET " + String.join(", ", camposUpdate)
                + " WHERE " + nomeId + " = " + id;
        System.out.println(sql);
        return query(sql) == null;
        
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