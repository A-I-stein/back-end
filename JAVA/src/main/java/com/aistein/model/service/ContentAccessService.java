/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.util.SQL;
import java.util.ArrayList;
import com.aistein.model.table.Content;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Classe Conexão com o Content e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * User com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.2
 */

public class ContentAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
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
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Content encontrados utilizando a query recebida.
     */
    public static ArrayList<Content> get(String query){
        
        ArrayList<Content> conteudos = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Content conteudo=new Content(
                            result.getInt(COD_CONTEUDO), 
                            result.getString(NOME_CONTEUDO),
                            result.getString(TEXTO_CONTEUDO),
                            result.getString(STATUS_CONTEUDO).toCharArray()[0],
                            result.getString(USERNAME), 
                            result.getInt(MATERIA),
                            null,
                            result.getString(RESUMO_CONTEUDO),
                            result.getString(TIPO_CONTEUDO).toCharArray()[0],
                            result.getString(FONTE_CONTEUDO));
                    
                    conteudo.setDataPublicacao(result
                            .getDate(DATA_PUBLICACAO));
                    
                    conteudos.add(conteudo);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println(ex + " at getRowFromId");
            return null;
        }
        return conteudos;
    }
    
    /**
     * Pesquisa no bd usando o codigo do Conteudo.
     * @param codConteudo
     * @return um objeto Content que corresponde ao codigo recebido.
     */
    public static Content getConteudoFromCodConteudo(String codConteudo) {
        
        ArrayList<Content> conteudos = get("SELECT * FROM conteudo WHERE"
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
        return get("SELECT * FROM conteudo");
    }
    
    /**
     * Deleta um conteudo do bd usando o codigo do mesmo.
     * @param codConteudo do conteudo a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codConteudo) {
        String stm = "DELETE FROM conteudo WHERE " + COD_CONTEUDO + " = "
                   + codConteudo;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Conteudo no bd
     * @param conteudo
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Content conteudo){
  
        String stm = "INSERT INTO Conteudo (" + COD_CONTEUDO + ", " 
                   + NOME_CONTEUDO + ", " + TEXTO_CONTEUDO + ", " 
                   + STATUS_CONTEUDO + ", " + USERNAME + ", " + MATERIA + ", "
                   + DATA_PUBLICACAO + ", " + RESUMO_CONTEUDO + ", " 
                   + TIPO_CONTEUDO + ", " + FONTE_CONTEUDO + ") VALUES ("
                   + conteudo.getCodConteudo()+", '" +conteudo.getNomeConteudo()
                   + "', '" + conteudo.getTextoConteudo() + "', '" 
                   + conteudo.getStatusConteudo()+"', '"+conteudo.getUsername()
                   + "', " +  conteudo.getMateria() + ", " 
                   + conteudo.getDataPublicacao() + ", '" 
                   + conteudo.getResumoConteudo() + "', '" 
                   + conteudo.getTipoConteudo() + "', '" 
                   + conteudo.getFonteConteudo() + "');";

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza o conteudo no bd correspondente ao objeto Content recebido
     * @param conteudo
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Content conteudo){
        
        String stm = "UPDATE Conteudo SET (" + NOME_CONTEUDO + ", " 
                   + TEXTO_CONTEUDO + ", " + STATUS_CONTEUDO + ", "  + MATERIA 
                   + ", " + DATA_PUBLICACAO + ", " + RESUMO_CONTEUDO + ", " 
                   + TIPO_CONTEUDO + ", " + FONTE_CONTEUDO + ") = ( '" 
                   + conteudo.getNomeConteudo() + "', '" 
                   + conteudo.getTextoConteudo() + "', '" 
                   + conteudo.getStatusConteudo()+"', " + conteudo.getMateria()
                   + ", " + conteudo.getDataPublicacao() + ", '" 
                   + conteudo.getResumoConteudo() + "', '" 
                   + conteudo.getTipoConteudo() + "', '"
                   + conteudo.getFonteConteudo() + "');";

        return SQL.query(stm) == null;
    }
}