/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Professor;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com o Professor e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Professor com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class ProfessorAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String ID_USERNAME;
    private static final String USERNAME;
    private static final String NOME;
    private static final String EMAIL;
    private static final String SENHA;
    private static final String DATA_CADASTRO;
    private static final String DATA_NASCIMENTO;
    private static final String IDT_TIPO;
    private static final String FOTO;
    private static final String GENERO;
    private static final String ESCOLA;
    private static final String MATERIA;
    
    //Inicialização das constantes
    static{
        ID_USERNAME = "B.Username";
        USERNAME = "Username";
        NOME = "Nome";
        EMAIL = "Email";
        SENHA = "Senha";
        DATA_CADASTRO = "Data_Cadastro";
        DATA_NASCIMENTO = "Data_Nascimento";
        IDT_TIPO = "Identificador_Tipo";
        FOTO = "Foto";
        GENERO = "Genero";
        ESCOLA = "Escola";
        MATERIA = "Materia";
    }
    
    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Professor encontrados utilizando a query recebida.
     */
        public static ArrayList<Professor> get(String query){
        
        ArrayList<Professor> professores = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Professor professor=new Professor(
                            result.getString(ID_USERNAME),
                            result.getString(NOME), 
                            result.getString(EMAIL),
                            result.getString(SENHA), 
                            null,
                            result.getInt(FOTO),
                            result.getInt(GENERO),
                            result.getString(ESCOLA),
                            result.getInt(MATERIA));
                    
                    professor.setDataNascimento(result
                            .getDate(DATA_NASCIMENTO));
                    
                    professores.add(professor);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return professores;
    }
    
    /**
     * Pesquisa no bd usando o Username do Professor.
     * @param username
     * @return um objeto Professor que corresponde ao username recebido.
     */
    public static Professor getProfessorFromUsername(String username) {
        
        ArrayList<Professor> professores = get("SELECT * FROM usuario A JOIN pr"
                                         + "ofessor B ON A.username = B.usernam"
                                         + "e WHERE " + ID_USERNAME + " = '" 
                                         + username + "'");
        
        if (UserAccessService.isUsernameUsed(username)==false){
            System.out.println("Nenhum usuário encontrado com esse username" + 
                    username);
            return null;
        }
        return professores.get(0);
    }
    
    /**
     * Pesquisa no bd todas os professores.
     * @return todos os objetos Professor em um ArrayList.
     */
    public static ArrayList<Professor> getAll() {
        return get("SELECT * FROM usuario A JOIN professor B ON A.username "
                   + "= B.username");
    }
    
    /**
     * Deleta um professor e usuário do bd usando o username do mesmo.
     * @param username do professor e usuário a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(String username) {
        String stm = "DELETE FROM usuario WHERE " + USERNAME + " = '" 
                   + username + "';\n DELETE FROM professor WHERE "
                   + USERNAME + " = '" + username + "';";
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Usuário e um Professor no bd
     * @param professor
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Professor professor){

        String stm = "INSERT INTO Usuario (" + USERNAME + ", " + NOME + ", "
                   + EMAIL + ", " + SENHA + ", " + DATA_CADASTRO + ", " 
                   + IDT_TIPO + ", " + FOTO + ", " + GENERO + ", " 
                   + DATA_NASCIMENTO + ") VALUES ('" + professor.getUsername() 
                   + "', '" + professor.getNome() + "', '" + professor.getSenha() 
                   + "', '" +professor.getEmail() + "', '" + professor.getDataCadastro()
                   + "', '" + professor.getIdtTipo() + "', " + professor.getFoto() 
                   + ", " +professor.getGenero() + ", '" + professor.getDataNascimento()
                   + "'); \nINSERT INTO Professor (" + USERNAME + ", " + ESCOLA 
                   + ", " + MATERIA + ") VALUES ('" + professor.getUsername()
                   + "', '" + professor.getEscola() + "', "
                   + professor.getMateria() + ");";

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza o usuario e o professor no bd correspondente ao objeto 
     * Professor recebido
     * @param professor
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Professor professor){
         
        String stm = "UPDATE usuario SET (" + NOME + ", " + IDT_TIPO + ", "
                   + FOTO + ", " + GENERO + ", " + DATA_NASCIMENTO + ", "
                   + SENHA + ") = ("+professor.getNome()+", "
                   + professor.getIdtTipo() + ", " + professor.getFoto() + ", "
                   + professor.getGenero() + ", "+ professor.getDataNascimento()
                   + ", " + professor.getSenha()+") WHERE " + USERNAME + " = '" 
                   + professor.getUsername() + "';\n" + "UPDATE professor SET(" 
                   + ESCOLA + ", " + MATERIA + ") = ('" + professor.getEscola() 
                   + "', " + professor.getMateria() + ")";

        return SQL.query(stm) == null;
    }
}
