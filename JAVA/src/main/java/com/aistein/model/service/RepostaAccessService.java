/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Resposta;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com o Resposta e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Resposta com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class RepostaAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String COD_QUESTIONARIO;
    private static final String COD_PERGUNTA;
    private static final String COD_RESPOSTA;
    private static final String DESC_RESPOSTA;
    
    //Inicialização das constantes
    static{
        COD_QUESTIONARIO = "Codigo_Quetionario";
        COD_PERGUNTA = "Codigo_Pergunta";
        COD_RESPOSTA = "Codigo_Resposta";
        DESC_RESPOSTA = "Descricao_Resposta";
    }

    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Resposta encontrados utilizando a query recebida.
     */
    public static ArrayList<Resposta> get(String query){
        
        ArrayList<Resposta> respostas = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Resposta resposta=new Resposta(
                            result.getInt(COD_RESPOSTA), 
                            result.getString(DESC_RESPOSTA),
                            result.getInt(COD_PERGUNTA),
                            result.getInt(COD_QUESTIONARIO));
                                        
                    respostas.add(resposta);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return respostas;
    }
    
    /**
     * Pesquisa no bd usando o Codigo da Resposta.
     * @param codResp Código que corresponde a parte da resposta
     * @param codPerg Código que corresponde a parte da pergunta
     * @param codQuest Código que corresponde a parte do questionário
     * @return um objeto Resposta que corresponde ao codResposta recebido.
     */
    public static Resposta getRespostaFromCodigos(int 
            codResp, int codPerg, int codQuest) {
        
        ArrayList<Resposta> respostas = get("SELECT * FROM resposta WHERE "
                                      + COD_RESPOSTA + " = " + codResp + "AND"
                                      + COD_PERGUNTA + " = " + codPerg + "AND"
                                      + COD_QUESTIONARIO + " = " + codQuest);
        
        if (respostas==null){
            System.out.println("Nenhum resposta encontrado com esses Códigos: " + 
                    codResp + ", " + codPerg + " e " + codQuest);
            return null;
        }
        return respostas.get(0);
    }
    
    /**
     * Pesquisa no bd todas os respostas.
     * @return todos os objetos Resposta em um ArrayList.
     */
    public static ArrayList<Resposta> getAll() {
        return get("SELECT * FROM resposta");
    }
    
    /**
     * Deleta um resposta do bd usando o codigo do mesmo.
     * @param codResp da resposta a ser removida.
     * @param codPerg da resposta a ser removida.
     * @param codQuest da resposta a ser removida.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codResp, int codPerg, int codQuest) {
        String stm = "DELETE FROM resposta WHERE "
                                      + COD_RESPOSTA + " = " + codResp + "AND"
                                      + COD_PERGUNTA + " = " + codPerg + "AND"
                                      + COD_QUESTIONARIO + " = " + codQuest;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Resposta no bd
     * @param resposta
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Resposta resposta){

        String stm = "INSERT INTO resposta (" + COD_QUESTIONARIO + ", " 
                   + COD_PERGUNTA + ", " + COD_RESPOSTA + ", " + DESC_RESPOSTA
                   + ") VALUES (" + resposta.getCodQuestionario() + ", " 
                   + resposta.getCodPergunta() + ", "+ resposta.getCodResposta()
                   + ", '" + resposta.getDescResposta() + "');" ;

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza a resposta no bd correspondente ao objeto Resposta recebido
     * @param resposta
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Resposta resposta){
         
        String stm = "UPDATE resposta SET (" + DESC_RESPOSTA + ") = ("
                   + resposta.getDescResposta()+")" + " WHERE " + COD_RESPOSTA
                   + " = " + codResp + "AND" + COD_PERGUNTA + " = " + codPerg
                   + "AND" + COD_QUESTIONARIO + " = " + codQuest;

        return SQL.query(stm) == null;
    }
}
