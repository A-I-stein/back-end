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
 * Classe Conexão com o User e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * User com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.2
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
        DATA_CADASTRO = "Data_Cadastro";
        DATA_NASCIMENTO = "Data_Nascimento";
        IDT_TIPO = "Identificador_Tipo";
        FOTO = "Foto";
        GENERO = "Genero";
    }

    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos User encontrados utilizando a query recebida.
     */
    public static ArrayList<User> get(String query){
        
        ArrayList<User> usuarios = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    User usuario=new User(
                            result.getString(NOME), 
                            result.getString(EMAIL),
                            result.getString(SENHA),
                            result.getString(ID_USERNAME), 
                            null,
                            result.getString(IDT_TIPO).toCharArray()[0],
                            result.getInt(FOTO),
                            result.getInt(GENERO));
                    
                    usuario.setDataNascimento(result
                            .getDate(DATA_NASCIMENTO));
                    
                    usuarios.add(usuario);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return usuarios;
    }
    
    /**
     * Pesquisa no bd se o Username já está cadastrado.
     * @param username
     * @return se o username já está sendo utilizado por outro Usuario.
     */
    public static boolean isUsernameUsed(String username) {
        
        ArrayList<User> usuarios = get("SELECT * FROM usuario WHERE "
                                 + ID_USERNAME + " = '" + username + "'");
        
        if (usuarios == null){
            System.out.println("Nome está disponivel" + 
                    username);
            return false;
        }
        
        return true;
    }

     /**
     * Pesquisa no bd usando o Username do Usuário.
     * @param username
     * @return um objeto Usuario que corresponde ao username recebido.
     */
    public static User getUserFromUsername(String username) {
        
        ArrayList<User> usuarios = get("SELECT * FROM usuario WHERE "
                                 + ID_USERNAME + " = '" + username + "'");
        
        if (isUsernameUsed(username)==false){
            System.out.println("Nenhum usuário encontrado com esse username" + 
                                username);
            return null;
        }
        return usuarios.get(0);
    }
    
    /**
     * Pesquisa no bd todas os usuarios.
     * @return todos os objetos User em um ArrayList.
     */
    public static ArrayList<User> getAll() {
        return get("SELECT * FROM usuario");
    }
    
    /**
     * Deleta um usuario do bd usando o username do mesmo.
     * @param username do usuario a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(String username) {
        String stm = "DELETE FROM usuario WHERE " + ID_USERNAME + " = '"
                   + username + "'";
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Usuario no bd
     * @param usuario
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(User usuario){

        String stm = "INSERT INTO Usuario (" + ID_USERNAME + ", " + NOME + ", "
                   + EMAIL + ", " + SENHA + ", " + DATA_CADASTRO + ", " 
                   + IDT_TIPO + ", " + FOTO + ", " + GENERO + ", " 
                   + DATA_NASCIMENTO + ") VALUES ('" + usuario.getUsername()
                   + "', '" + usuario.getNome() + "', '" + usuario.getSenha() 
                   + "', '" + usuario.getEmail() + "', '" 
                   + usuario.getDataCadastro() + "', '" +  usuario.getIdtTipo() 
                   + "', " + usuario.getFoto() + ", " + usuario.getGenero() 
                   + ", '" + usuario.getDataNascimento() + "');" ;

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza o usuario no bd correspondente ao objeto Usuario recebido
     * @param usuario
     * @return true se não houver problemas na operação.
     */
    public static boolean update(User usuario){
         
        String stm = "UPDATE usuario SET (" + NOME + ", " + IDT_TIPO + ", "
                   + FOTO + ", " + GENERO + ", " + DATA_NASCIMENTO + ", "
                   + SENHA + ")=("+usuario.getNome()+", " + usuario.getIdtTipo()
                   + ", " + usuario.getFoto() + ", " +usuario.getGenero() + ", "
                   + usuario.getDataNascimento() + ", " + usuario.getSenha()+")"
                   + " WHERE username = '" + usuario.getUsername() + "'";

        return SQL.query(stm) == null;
    }
}
