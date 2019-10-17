/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Aluno;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com o Aluno e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Aluno com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class AlunoAccessService {
    
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
    }
    
    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Aluno encontrados utilizando a query recebida.
     */
        public static ArrayList<Aluno> get(String query){
        
        ArrayList<Aluno> alunos = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Aluno aluno=new Aluno(
                            result.getString(ID_USERNAME),
                            result.getString(NOME), 
                            result.getString(EMAIL),
                            result.getString(SENHA), 
                            null,
                            result.getInt(FOTO),
                            result.getInt(GENERO),
                            result.getString(ESCOLA));
                    
                    aluno.setDataNascimento(result
                            .getDate(DATA_NASCIMENTO));
                    
                    alunos.add(aluno);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return alunos;
    }
    
    /**
     * Pesquisa no bd usando o Username do Aluno.
     * @param username
     * @return um objeto Aluno que corresponde ao username recebido.
     */
    public static Aluno getAlunoFromUsername(String username) {
        
        ArrayList<Aluno> alunos = get("SELECT * FROM usuario A JOIN aluno B ON"
                                 + " A.username = B.username WHERE "
                                 + ID_USERNAME + " = '" + username + "'");
        
        if (UserAccessService.isUsernameUsed(username)==false){
            System.out.println("Nenhum usuário encontrado com esse username" + 
                    username);
            return null;
        }
        return alunos.get(0);
    }
    
    /**
     * Pesquisa no bd todas os alunos.
     * @return todos os objetos User em um ArrayList.
     */
    public static ArrayList<Aluno> getAll() {
        return get("SELECT * FROM usuario A JOIN aluno B ON A.username "
                   + "= B.username");
    }
    
    /**
     * Deleta um aluno e usuário do bd usando o username do mesmo.
     * @param username do aluno e usuário a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(String username) {
        String stm = "DELETE FROM usuario WHERE " + USERNAME + " = '" 
                   + username + "';\n DELETE FROM aluno WHERE "
                   + USERNAME + " = '" + username + "';";
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Usuário e um Aluno no bd
     * @param aluno
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Aluno aluno){

        String stm = "INSERT INTO Usuario (" + USERNAME + ", " + NOME + ", "
                   + EMAIL + ", " + SENHA + ", " + DATA_CADASTRO + ", " 
                   + IDT_TIPO + ", " + FOTO + ", " + GENERO + ", " 
                   + DATA_NASCIMENTO + ") VALUES ('" + aluno.getUsername() 
                   + "', '" + aluno.getNome() + "', '" + aluno.getSenha() 
                   + "', '" +aluno.getEmail() + "', '" + aluno.getDataCadastro()
                   + "', '" + aluno.getIdtTipo() + "', " + aluno.getFoto() 
                   + ", " +aluno.getGenero() + ", '" + aluno.getDataNascimento()
                   + "'); \nINSERT INTO Aluno (" + USERNAME + ", " 
                   + ESCOLA + ") VALUES ('" +aluno.getUsername()+ "', '"
                   + aluno.getEscola() + ");";

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza o usuario e o aluno no bd correspondente ao objeto 
     * Aluno recebido
     * @param aluno
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Aluno aluno){
         
        String stm = "UPDATE usuario SET (" + NOME + ", " + IDT_TIPO + ", "
                   + FOTO + ", " + GENERO + ", " + DATA_NASCIMENTO + ", "
                   + SENHA + ") = ("+aluno.getNome()+", " + aluno.getIdtTipo()
                   + ", " + aluno.getFoto() + ", " +aluno.getGenero() + ", "
                   + aluno.getDataNascimento() + ", " + aluno.getSenha()+")"
                   + " WHERE " + USERNAME + " = '" +aluno.getUsername() + "';\n"
                   + "UPDATE aluno SET(" + ESCOLA + ") = ('" + aluno.getEscola()
                   + ")";

        return SQL.query(stm) == null;
    }
}
