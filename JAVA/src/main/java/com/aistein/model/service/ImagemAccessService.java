/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.service;

import com.aistein.model.table.Imagem;
import com.aistein.util.SQL;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Classe Conexão com a Imagem e o BD.
 * Tem como responsabilidade única servir como conexão entre a classe modelo 
 * Imagem com o Banco de Dados.
 *
 * @author Gabriel Cruz
 * @version 1.0
 */

public class ImagemAccessService {
    
    //Objetos de manipulação interna.
    private static ResultSet result;
    
    //Constantes que representam os nomes das colunas no DB SQL.
    private static final String CODIGO_IMAGEM;
    private static final String CAMINHO_IMAGEM;
    
    //Inicialização das constantes
    static{
        CODIGO_IMAGEM = "codigo_imagem";
        CAMINHO_IMAGEM = "caminho_imagem";
    }

    /**
     * Pesquisa no bd usando a query recebida.
     * @param query query a ser executada
     * @return os objetos Imagem encontrados utilizando a query recebida.
     */
    public static ArrayList<Imagem> get(String query){
        
        ArrayList<Imagem> imagens = new ArrayList<>();
        
        try{
            result = SQL.query(query);
            
            if(result.next()) {
                do{
                    Imagem imagem = new Imagem(
                            result.getInt(CODIGO_IMAGEM), 
                            result.getString(CAMINHO_IMAGEM));
                                        
                    imagens.add(imagem);
                    
                }while(result.next());
            }else{
                System.out.println("Nada encontrado com a query fornecida.");
            }
        }catch(SQLException ex) {
            System.out.println("Ocorreu o Erro:" + ex);
            return null;
        }
        return imagens;
    }
    
    /**
     * Pesquisa no bd usando o Codigo da Imagem.
     * @param codImagem
     * @return um objeto Imagem que corresponde ao codImagem recebido.
     */
    public static Imagem getImagemFromCodImagem(int codImagem) {
        System.out.println("SELECT * FROM imagem WHERE"
                                     + CODIGO_IMAGEM + "=" + codImagem);
        ArrayList<Imagem> imagens = get("SELECT * FROM imagem WHERE "
                                     + CODIGO_IMAGEM + "=" + codImagem);
        
        if (imagens==null){
            System.out.println("Nenhuma imagem encontrada com esse Código" + 
                    codImagem);
            return null;
        }
        return imagens.get(0);
    }
    
    /**
     * Pesquisa no bd todas as imagens.
     * @return todos os objetos Imagem em um ArrayList.
     */
    public static ArrayList<Imagem> getAll() {
        return get("SELECT * FROM imagem");
    }
    
    /**
     * Deleta um imagem do bd usando o codigo da mesma.
     * @param codImagem do imagem a ser removido.
     * @return true se a operação for bem sucedida e false se não for.
     */
    public static boolean delete(int codImagem) {
        String stm = "DELETE FROM imagem WHERE " + CODIGO_IMAGEM + " = "
                   + codImagem;
        return SQL.query(stm) == null;
    }
        
    /**
     * Insere um Imagem no bd
     * @param imagem
     * @return true se não houver problemas na operação.
     */
    public static boolean insert(Imagem imagem){

        String stm = "INSERT INTO imagem (" + CODIGO_IMAGEM + ", " 
                   + CAMINHO_IMAGEM + ") VALUES ('" + imagem.getCodImagem() 
                   + "', '" + imagem.getCaminhoImagem() + "');" ;

        return SQL.query(stm) == null;
    }
        
    /**
     * Atualiza a imagem no bd correspondente ao objeto Imagem recebido
     * @param imagem
     * @return true se não houver problemas na operação.
     */
    public static boolean update(Imagem imagem){
         
        String stm = "UPDATE imagem SET (" + CAMINHO_IMAGEM + ") = ("
                   + imagem.getCaminhoImagem()+")" + " WHERE " + CODIGO_IMAGEM
                   + " = " + imagem.getCodImagem();

        return SQL.query(stm) == null;
    }
}
