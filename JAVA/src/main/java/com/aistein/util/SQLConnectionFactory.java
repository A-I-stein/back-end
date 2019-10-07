/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.util;

/import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/**
 * Classe responsável por conectar com o Banco de Dados
 * 
 * @author Gabriel Cruz
 * @version 1.0
 */
public class SQLConnectionFactory {
    
    public Connection getConnection() {
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Properties dbProps = IO.getProperties("/configuracoes.properties");
            String url = dbProps.getProperty("db.url"),
                   usuario = dbProps.getProperty("db.usuario"),
                   senha = dbProps.getProperty("db.senha");
            return DriverManager.getConnection(
                    url + "?"
                    + "autoReconnect=false"
                    + "&useSSL=false"
                    + "&useTimezone=true"
                    + "&serverTimezone=UTC",
                usuario, senha);
        } catch (SQLException sqlex) {
            System.out.println("Erro na conexão com o banco de dados.");
            throw new RuntimeException(sqlex);
        } catch (ClassNotFoundException cnfex) {
            System.out.println("O driver não foi encontrado ou carregado corretamente.");
            throw new RuntimeException(cnfex);
        }
        
    }
    
}
