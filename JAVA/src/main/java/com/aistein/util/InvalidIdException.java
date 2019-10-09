/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.util;



/**
 * Exceção para indicar valores de id inválidos. 
 * Isso pode ocorrer em situações em que o valor é menor do que zero ou quando é
 * NULL
 * 
 * @author Gabriel Cruz
 * @version 1.0
 */
public class InvalidIdException extends RuntimeException {

    public InvalidIdException() {
        super("O id passado é inválido. Verifique se é um número maior do que 0");
    }
    
}
