/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Questionario;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com o Questionario e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Questionário com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class QuestionarioAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String CODIGO_QUESTIONARIO;
    private static final String MATERIA;
    
    //Inicialização das constantes
    static{
        CODIGO_QUESTIONARIO = "Codigo_Questionario";
        MATERIA = "Materia";
    }

    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Questionario encontrados utilizando a query recebida.
     */
    public static ArrayList<Questionario> get(String query){
        
        ArrayList<Questionario> questionarios = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Questionario questionario=new Questionario(
                            result.getInt(CODIGO_QUESTIONARIO), 
                            result.getInt(MATERIA));
                                        
                    questionarios.add(questionario);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return questionarios;
    }
    
    /**
     * Pesquisa no bd usando o Codigo do Questionário.
     * @param codQuestionario
     * @return um objeto Questionario que corresponde ao codQuestionario recebido.
     */
    public static Content getQuestionarioFromCodQuestionario(int codQuestionario) {
        
        ArrayList<Questionario> questionarios = get("SELECT * FROM questionario WHERE"
                                     + CODIGO_QUESTIONARIO + "=" + codQuestionario);
        
        if (questionarios==null){
            System.out.println("Nenhum questionário encontrado com esse Código" + 
                    codQuestionario);
            return null;
        }
        return questionarios.get(0);
    }
    
    /**
     * Pesquisa no bd todas os questionários.
     * @return todos os objetos Questionario em um ArrayList.
     */
    public static ArrayList<Questionario> getAll() {
        return get("SELECT * FROM questionario");
    }
    
    /**
     * Deleta um questionario do bd usando o codigo do mesmo.
     * @param codQuestionario do questionario a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codQuestionario) {
        String stm = "DELETE FROM questionario WHERE " + CODIGO_QUESTIONARIO + " = "
                   + codQuestionario;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Questionario no bd
     * @param questionario
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Questionario questionario){

        String stm = "INSERT INTO questionario (" + CODIGO_QUESTIONARIO + ", " + MATERIA
                   + ") VALUES ('" + questionario.getCodQuestionario() + "', '" 
                   + questionario.getMateria() + "');" ;

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza o questionário no bd correspondente ao objeto Questionario recebido
     * @param questionario
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Questionario questionario){
         
        String stm = "UPDATE questionario SET (" + MATERIA + ") = ("
                   + questionario.getMateria()+")" + " WHERE" + CODIGO_QUESTIONARIO
                   + " = " + questionario.getCodQuestionario();

        return SQL.query(stm) == null;
    }
}
