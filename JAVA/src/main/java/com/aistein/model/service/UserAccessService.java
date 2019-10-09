/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.User;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Gabriel
 */
public class UserAccessService {

    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String ID_USERNAME;
    private static final String NOME;
    private static final String EMAIL;
    private static final String SENHA;
    private static final String DATA_CADASTRO;
    private static final String DATA_NASCIMENTO;
    private static final String IDT_TIPO;
    private static final String FOTO;
    private static final String GENERO;
    
    //Inicialização das constantes
    static{
        ID_USERNAME = "Username";
        NOME = "Nome";
        EMAIL = "Email";
        SENHA = "Senha";
        DATA_CADASTRO = "DataCadastro";
        DATA_NASCIMENTO = "DataNascimento";
        IDT_TIPO = "IdentificadorTipo";
        FOTO = "Foto";
        GENERO = "Genero";
    }
    
}
