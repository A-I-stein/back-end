/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Admin;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com o Admin e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Admin com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class AdminAccessService {
    
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
    private static final String NUM_APROVACOES;
    private static final String DIAS_COMO_ADMIN;
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
        NUM_APROVACOES = "Numero_Aprovacoes";
        DIAS_COMO_ADMIN = "Dias_Como_Administrador";
        MATERIA = "Materia";
    }
    
    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Admin encontrados utilizando a query recebida.
     */
        public static ArrayList<Admin> get(String query){
        
        ArrayList<Admin> administradores = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Admin administrador=new Admin(
                            result.getString(ID_USERNAME),
                            result.getString(NOME), 
                            result.getString(EMAIL),
                            result.getString(SENHA), 
                            null,
                            result.getInt(FOTO),
                            result.getInt(GENERO),
                            result.getString(ESCOLA),
                            result.getInt(NUM_APROVACOES),
                            result.getInt(DIAS_COMO_ADMIN),
                            result.getInt(MATERIA));
                    
                    administrador.setDataNascimento(result
                            .getDate(DATA_NASCIMENTO));
                    
                    administradores.add(administrador);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return administradores;
    }
    
    /**
     * Pesquisa no bd usando o Username do Admin.
     * @param username
     * @return um objeto Admin que corresponde ao username recebido.
     */
    public static Admin getAdminFromUsername(String username) {
        
        ArrayList<Admin> administradores = get("SELECT * FROM usuario A JOIN ad"
                + "ministrador B ON A.username = B.username WHERE "
                                 + ID_USERNAME + " = '" + username + "'");
        
        if (UserAccessService.isUsernameUsed(username)==false){
            System.out.println("Nenhum usuário encontrado com esse username" + 
                    username);
            return null;
        }
        return administradores.get(0);
    }
    
    /**
     * Pesquisa no bd todas os administradores.
     * @return todos os objetos User em um ArrayList.
     */
    public static ArrayList<Admin> getAll() {
        return get("SELECT * FROM usuario A JOIN administrador B ON A.username "
                   + "= B.username");
    }
    
    /**
     * Deleta um administrador e usuário do bd usando o username do mesmo.
     * @param username do administrador e usuário a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(String username) {
        String stm = "DELETE FROM usuario WHERE " + USERNAME + " = '" 
                   + username + "';\n DELETE FROM administrador WHERE "
                   + USERNAME + " = '" + username + "';";
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Usuário e um Administrador no bd
     * @param admin
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Admin admin){

        String stm = "INSERT INTO Usuario (" + USERNAME + ", " + NOME + ", "
                   + EMAIL + ", " + SENHA + ", " + DATA_CADASTRO + ", " 
                   + IDT_TIPO + ", " + FOTO + ", " + GENERO + ", " 
                   + DATA_NASCIMENTO + ") VALUES ('" + admin.getUsername() 
                   + "', '" + admin.getNome() + "', '" + admin.getSenha() 
                   + "', '" +admin.getEmail() + "', '" + admin.getDataCadastro()
                   + "', '" + admin.getIdtTipo() + "', " + admin.getFoto() 
                   + ", " +admin.getGenero() + ", '" + admin.getDataNascimento()
                   + "'); \nINSERT INTO Administrador (" + USERNAME + ", " 
                   + ESCOLA + ", " + NUM_APROVACOES + ", " + DIAS_COMO_ADMIN
                   + ", " + MATERIA + ") VALUES ('" +admin.getUsername()+ "', '"
                   + admin.getEscola() + "', " + admin.getNumAprovacoes()+ "', "
                   + admin.getDiasComoAdmin()+ "', " +admin.getMateria() + ");";

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza o usuario e o administrador no bd correspondente ao objeto 
     * Admin recebido
     * @param admin
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Admin admin){
         
        String stm = "UPDATE usuario SET (" + NOME + ", " + IDT_TIPO + ", "
                   + FOTO + ", " + GENERO + ", " + DATA_NASCIMENTO + ", "
                   + SENHA + ") = ("+admin.getNome()+", " + admin.getIdtTipo()
                   + ", " + admin.getFoto() + ", " +admin.getGenero() + ", "
                   + admin.getDataNascimento() + ", " + admin.getSenha()+")"
                   + " WHERE " + USERNAME + " = '" +admin.getUsername() + "';\n"
                   + "UPDATE administrador SET(" + ESCOLA + ", " 
                   + NUM_APROVACOES + ", " + DIAS_COMO_ADMIN + ", " + MATERIA 
                   + ") = ('" + admin.getEscola() + "', "
                   + admin.getNumAprovacoes() + ", " + admin.getDiasComoAdmin()
                   + ", " + admin.getMateria() + ")";

        return SQL.query(stm) == null;
    }
}
