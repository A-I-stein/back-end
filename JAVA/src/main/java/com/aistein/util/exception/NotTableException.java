/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.util.exception;

/**
 * Exceção para operações com classes anotadas como Table. 
 * É lançada caso a classe sendo analisada não contenha a anotação.
 * 
 * @author Gabriel Cruz
 * @version 1.0
 */
public class NotTableException extends RuntimeException {

    public NotTableException() {
        super("A classe do objeto não é reconhecida como tabela. "
            + "Considere anotá-la com Table.");
    }
    