/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.util;

import java.io.File;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Properties;
/**
 * Classe responsável por conter métodos estáticos para manipulação de E/S.
 * 
 * @author Gabriel Cruz
 * @version 1.0
 */
public final class IO {
    
    private static MessageDigest digester;

    static {
        try {
            digester = MessageDigest.getInstance("MD5");
        }
        catch (NoSuchAlgorithmException ex) {
            System.out.println(ex);
        }
    }
        
    private IO() {}
    
    /**
     * Retorna um objeto com os dados extraídos de um arquivo especificado. 
     *  
     * @param caminho do arquivo de propriedades 
     * @return objeto contendo as propriedades
     */
    public static Properties getProperties(String caminho) {
        
        Properties props = new Properties();
        
        try {
            props.load(IO.class.getResourceAsStream(caminho));

            return props;

        } catch (IOException ioex) {
            System.out.println("Erro ao tentar carregar as propriedades.");
            System.out.println(ioex);

            return null;
        }
        
    }
    
    /**
     * Retorna uma string com a separação de arquivos adequada ao sistema.
     * Este método realiza a conversão do caminho de arquivo de acrodo com o 
     * Sistema Operacional, caso essa seja necessária.
     * 
     * @param caminho do arquivo de propriedades 
     * @return caminho do arquivo verificado
     */
    public static String getCaminhoVerificado(String caminho) {        
        String caminhoVerificado = caminho
            .replace('/', File.separator.charAt(0))
            .replace('\\', File.separator.charAt(0));
        
        return caminhoVerificado;
    }
    
    /**
     * Retorna uma string com a criptografada.
     * 
     * @param String 
     * @return String criptografada
     */
    public static String criptografar(String s) {
        
        digester.update(s.getBytes());
        
        byte[] hash = digester.digest();
        StringBuilder hexString = new StringBuilder();
        
        for (int i = 0; i < hash.length; i++) {
            String criptografado = Integer.toHexString(0xFF & hash[i]);
            hexString.append(((0xff & hash[i]) < 0x10 ? "0" : "") + criptografado);
        }
        
        return hexString.toString();
    }    
}
