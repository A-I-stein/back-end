/*
 * Projeto de Integração - A.I.Stein
 * CEFET-MG
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

package com.aistein.model.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * Indica que um atributo representa a primary key de uma tabela.
 * Dessa forma, classes como a SQL poderão manipular os dados dos objetos da 
 * classe anotada para realizar inserção e atualização de registros na 
 * respectiva tabela.
 * 
 * @author Gabriel Cruz
 * @version 1.0
 */

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface Id {
    
}
