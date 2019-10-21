/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Pergunta;
import com.aistein.model.table.Resposta;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com Pergunta e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Pergunta com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class PerguntaAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String COD_QUESTIONARIO;
    private static final String COD_PERGUNTA;
    private static final String DESC_PERGUNTA;
    
    //Inicialização das constantes
    static{
        COD_QUESTIONARIO = "Codigo_Quetionario";
        COD_PERGUNTA = "Codigo_Pergunta";
        DESC_PERGUNTA = "Descricao_Pergunta";
    }

    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Pergunta encontrados utilizando a query recebida.
     */
    public static ArrayList<Pergunta> get(String query){
        
        ArrayList<Pergunta> perguntas = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Pergunta pergunta=new Pergunta(
                            result.getInt(COD_PERGUNTA), 
                            result.getString(DESC_PERGUNTA),
                            result.getInt(COD_QUESTIONARIO));
                                        
                    perguntas.add(pergunta);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return perguntas;
    }
    
    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Pergunta encontrados utilizando a query recebida.
     */
    public static int getCodRespCorreta(){

        int codRespCorreta = new Integer();

        try{
            result = SQL.query("SELECT * FROM resposta WHERE "
                               + COD_PERGUNTA + " = " + codPerg + "AND"
                               + COD_QUESTIONARIO + " = " + codQuest + "AND"
                               + RESP_CORRETA + " = true");
            
            if(result.next()) {
                do{
                    codRespCorreta = result.getInt(COD_RESPOSTA);
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return codRespCorreta;
    }
    
    /**
     * Pesquisa no bd usando o Codigo da Pergunta.
     * @param codResp Código que corresponde a parte da pergunta
     * @param codPerg Código que corresponde a parte da pergunta
     * @param codQuest Código que corresponde a parte do questionário
     * @return um objeto Pergunta que corresponde ao codPergunta recebido.
     */
    public static Pergunta getPerguntaFromCodigos(int codPerg, int codQuest) {
        
        ArrayList<Pergunta> perguntas = get("SELECT * FROM pergunta WHERE "
                                      + COD_PERGUNTA + " = " + codPerg + "AND"
                                      + COD_QUESTIONARIO + " = " + codQuest);
        
        if (perguntas==null){
            System.out.println("Nenhum pergunta encontrado com esses Códigos: "
                               + codPerg + " e " + codQuest);
            return null;
        }
        return perguntas.get(0);
    }
    
    /**
     * Pesquisa no bd todas as perguntas.
     * @return todos os objetos Pergunta em um ArrayList.
     */
    public static ArrayList<Pergunta> getAll() {
        return get("SELECT * FROM pergunta");
    }
    
    /**
     * Deleta um pergunta do bd usando o codigo da mesmo.
     * @param codPerg da pergunta a ser removida.
     * @param codQuest da pergunta a ser removida.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codPerg, int codQuest) {
        String stm = "DELETE FROM pergunta WHERE "
                                      + COD_PERGUNTA + " = " + codPerg + "AND"
                                      + COD_QUESTIONARIO + " = " + codQuest;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere uma Pergunta no bd
     * @param pergunta
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Pergunta pergunta){

        String stm = "INSERT INTO pergunta (" + COD_QUESTIONARIO + ", " 
                   + COD_PERGUNTA + ", " + DESC_PERGUNTA + ") VALUES (" 
                   + pergunta.getCodQuestionario() + ", "
                   + pergunta.getCodPergunta() + ", '"
                   + pergunta.getDescPergunta() + "');" ;

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza a pergunta no bd correspondente ao objeto Pergunta recebido
     * @param pergunta
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Pergunta pergunta){
         
        String stm = "UPDATE pergunta SET (" + DESC_PERGUNTA + ") = ("
                   + pergunta.getDescPergunta()+")" + " WHERE " COD_PERGUNTA 
                   + " = " + codPerg + "AND" + COD_QUESTIONARIO + " = " 
                   + codQuest;

        return SQL.query(stm) == null;
    }
}
