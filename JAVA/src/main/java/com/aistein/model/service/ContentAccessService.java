/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Content;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com o Content e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * User com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.2
 */

public class ContentAccessService {
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String COD_CONTEUDO;
    private static final String NOME_CONTEUDO;
    private static final String TEXTO_CONTEUDO;
    private static final String STATUS_CONTEUDO;
    private static final String USERNAME;
    private static final String MATERIA;
    private static final String DATA_PUBLICACAO;
    private static final String RESUMO_CONTEUDO;
    private static final String TIPO_CONTEUDO;
    private static final String FONTE_CONTEUDO;
    
    //Inicialização das constantes
    static{
        COD_CONTEUDO = "Codigo_Conteudo";
        NOME_CONTEUDO = "Nome_Conteudo";
        TEXTO_CONTEUDO = "Texto_Conteudo";
        STATUS_CONTEUDO = "Status_Conteudo";
        USERNAME = "Username";
        MATERIA = "Materia";
        DATA_PUBLICACAO = "Data_Publicacao";
        RESUMO_CONTEUDO = "Resumo_Conteudo";
        TIPO_CONTEUDO = "Tipo_Conteudo";
        FONTE_CONTEUDO = "Fonte_Conteudo";
    }

     /**
     * Pesquisa no bd usando o codigo do Conteudo.
     * @param codConteudo
     * @return um objeto Content que corresponde ao codigo recebido.
     */
    public static Content getConteudoFromCodConteudo(String codConteudo) {
        
        ArrayList<Content> conteudos = SQL.query("SELECT * FROM conteudo WHERE"
                                      + COD_CONTEUDO + "=" + codConteudo);
        
        if (conteudos==null){
            System.out.println("Nenhum Conteudo encontrado com esse Codigo" + 
                    codConteudo);
            return null;
        }
        return conteudos.get(0);
    }
    
    
    /**
     * Pesquisa no bd todas os conteudos.
     * @return todos os objetos Content em um ArrayList.
     */
    public static ArrayList<Content> getAll() {
        return SQL.query("SELECT * FROM conteudo");
    }
    
    /**
     * Deleta um conteudo do bd usando o codigo do mesmo.
     * @param codConteudo do conteudo a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codConteudo) {
        String stm = "DELETE FROM conteudo WHERE " + COD_CONTEUDO + " = "
                   + codConteudo;
        return SQL.query(stm);
    }
}