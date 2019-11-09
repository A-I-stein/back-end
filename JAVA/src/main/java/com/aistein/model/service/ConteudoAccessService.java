/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.util.SQL;
import java.util.ArrayList;
import com.aistein.model.table.Conteudo;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;


/**
 * Classe Conexão com o Content e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo
 * User com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.2
 */

public class ConteudoAccessService {

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
    public static ArrayList<Conteudo> get(String query){

        ArrayList<Conteudo> conteudos = new ArrayList<>();

        try{
             result = SQL.query("SELECT * FROM conteudo " + query);

           if (result.next()) {
                do {
                    Conteudo conteudo = new Conteudo(); 
                    conteudo.setCodConteudo(Integer.parseInt(
                            result.getString(COD_CONTEUDO)));
                    conteudo.setDataPublicacao(
                            result.getDate(DATA_PUBLICACAO));
                    conteudo.setFonteConteudo(
                            result.getString(FONTE_CONTEUDO));
                    conteudo.setMateria(
                            result.getInt(MATERIA));
                    conteudo.setNomeConteudo(
                            result.getString(NOME_CONTEUDO));
                    System.out.println(result.getString(RESUMO_CONTEUDO));
                    conteudo.setResumoConteudo(
                            result.getString(RESUMO_CONTEUDO));
                    conteudo.setStatusConteudo('A'); //Está null no popular BD 
                    conteudo.setTextoConteudo(              //CRIAR TRATAMENTO DE NULL
                            result.getString(TEXTO_CONTEUDO));
                    conteudo.setTipoConteudo('A'); // Está null no popular BD
                    conteudo.setUsername(
                            result.getString(USERNAME));
                    conteudos.add(conteudo);

                } while (result.next());
            } else {
                System.out.println("NENHUM JOGO COM CONDIÇÃO: "
                        + query + " FOI ENCONTRADO NO BANCO DE DADOS");
                return null;
            }

        } catch (SQLException ex) {
            System.out.println(ex + " at getRowFromId");
            return null;
        }

        return conteudos;
    }

    /**
     * Pesquisa no bd usando o codigo do Conteudo.
     * @param content
     * @return um objeto Content que corresponde ao codigo recebido.
     */
    public static Conteudo getConteudoFromCodConteudo(Conteudo content) {
        int codigo = content.getCodConteudo();
        
        ArrayList<Conteudo> conteudos = get("WHERE"
                                     + COD_CONTEUDO + "=" + codigo);

        if (conteudos==null){
            System.out.println("Nenhum Conteudo encontrado com esse Codigo" +
                    codigo);
            return null;
        }
        return conteudos.get(0);
    }

    /**
     * Pesquisa no bd usando o codigo do Conteudo.
     * @param content
     * @return um objeto Content que corresponde ao codigo recebido.
     */
    public static ArrayList<Conteudo> getConteudoFromNome(Conteudo content) {
        String nome = content.getNomeConteudo();

        ArrayList<Conteudo> conteudos = get("WHERE"
                                     + NOME_CONTEUDO + "=" + nome);

        if (conteudos==null){
            System.out.println("Nenhum Conteudo encontrado com esse Nome" +
                    nome);
            return null;
        }
        return conteudos;
    }

    /**
     * Pesquisa no bd todas os conteudos.
     * @return todos os objetos Content em um ArrayList.
     */
    public static ArrayList<Conteudo> getAll() {
     ArrayList<Conteudo> conteudo = get("");
     
        if (conteudo == null) {
            System.out.println("NENHUM Conteudo FOI ENCONTRADO NO BANCO DE DADOS");
            return null;
        }
        
        return conteudo;
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
    public static boolean insert(Conteudo conteudo){

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
    public static boolean update(Conteudo conteudo){

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
