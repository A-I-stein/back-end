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
        DATA_CADASTRO = "Data_Cadastro";
        DATA_NASCIMENTO = "Data_Nascimento";
        IDT_TIPO = "Identificador_Tipo";
        FOTO = "Foto";
        GENERO = "Genero";
    }

     /**
     * Pesquisa no bd se o Username já está cadastrado.
     * @param Username
     * @return se o username já está sendo utilizado por outro Usuario.
     */
    public static boolean isUsernameUsed(String username) {
        
        ArrayList<User> usuarios = query("SELECT * FROM usuario WHERE Username="
                                       + username);
        
        if (usuarios == null){
            System.out.println("Nome está disponivel" + 
                    username);
            return false;
        }
        
        return true;
    }

     /**
     * Pesquisa no bd usando o Username do Usuário.
     * @param Username
     * @return um objeto Usuario que corresponde ao username recebido.
     */
    public static User getUserFromUsername(String username) {
        
        ArrayList<User> usuarios = query("SELECT * FROM usuario WHERE Username="
                                       + username);
        
        if (isUsernameUsed(username)==false){
            System.out.println("Nenhum usuário encontrado com esse username" + 
                    username);
            return null;
        }
        return usuarios.get(0);
    }
    
    
    /**
     * Pesquisa no bd todas os alugueis.
     * @return todos os objetos User em um ArrayList.
     */
    public static ArrayList<User> getAll() {
        return query("SELECT * FROM usuario");
    }
    
    /**
     * Deleta um usuario do bd usando o username do mesmo.
     * @param username do usuario a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int id) {
        String sql = "DELETE FROM usuario WHERE username = " + id;
        return query(sql);
    }
        
    /**
     * Insere um Usuario no bd
     * @param usuario
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(User usuario){

        return SQL.insert(aluguel);
    }
        
    /**
     * Atualiza o usuario no bd correspondente ao objeto Usuario recebido
     * @param user
     * @return true se não houver problemas na operação.
     */
    public static boolean update(User usuario){
         
        String sql = "UPDATE usuario SET (Nome, Identificador_Tipo, Foto, Gener"
                   + "o, Data_Nascimento, Senha) = (" +usuario.getNome()+ ", " 
                   +  usuario.getIdtTipo() + ", " + usuario.getFoto() + ", " 
                   + usuario.getGenero() + ", " + usuario.getDataNascimento", " 
                   + usuario.getSenha + ") WHERE username = " 
                   + usuario.getUsername;

        return query(sql) == null;
    }

    
    
    
}
