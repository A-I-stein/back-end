/*
 * Sistema de Agronegocio :: Stay Green
 * CEFET-MG
 * INF-2A 2018
 */
package com.aistein.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * Classe que possui os dados que permitem a conexão com o Banco de Dados.
 * 
 * @author Arthur Marcolino, Gabriel
 * @version 1.1
 */
public class SQLConnection {
    
    public Connection getConnection() {
        
        try {
            Class.forName("org.postgresql.Driver");           
            String url = "jdbc:postgresql://127.0.0.1:5432/aisteinBD",
                   usuario = "postgres",
                   senha = "123456";
            return DriverManager.getConnection(url, usuario, senha);
        } catch (SQLException sqlex) {
            System.out.println("Erro na conexão com o banco de dados.");
            throw new RuntimeException(sqlex);
        } catch (ClassNotFoundException cnfex) {
            System.out.println("O driver não foi encontrado ou carregado corretamente.");
            throw new RuntimeException(cnfex);
        }
        
    }
    
}
