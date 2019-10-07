/*
 * Projeto de Integracao - A.I.Stein
 * CEFET-MG 
 * INF-3A 2019
 * Arthut Marcolino, Gabriel Cruz, Heitor Santos, Italo Nascimento
 */

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Optional;

/**
 * Classe responsável por reunir ações básicas para a realização de requisições 
 * ao banco de dados.
 * 
 * @author Gabriel Cruz
 * @version 1.0
 */
public final class SQL {
    
    private static final Connection CONNECTION;
    
    static {
        CONNECTION = new SQLConnectionFactory().getConnection();
    }
    
    private SQL() {}
    
    /**
     * Realiza uma simples requisição ao banco de dados.
     * 
     * @param query a string de requisição, que deve estar de acordo com a
     *        implementação sendo utilizada
     * @return o conjunto de resutados da requisição
     */
    public static ResultSet query(String query) {
        
        try {
            Statement stmt = CONNECTION.createStatement();
            stmt.execute(query);
            return stmt.getResultSet();
        } catch (SQLException sqlex) {
            System.out.println(sqlex);
            return null;
        }
    }
    
    /**
     * Faz a inserção dos dados de um objeto para a respective tabela.
     * 
     * @param objeto o objeto com os dados a serem inseridos
     * @return se a operação ocorreu com sucesso ou não
     * @throws NotTableException se a classe não for anotada como Table
     */
    public static boolean insert(Object objeto) throws NotTableException {
        
        Map<String, String> campos = getCampos(objeto, true);
        String[] nomesCampos = campos.keySet().stream().toArray(String[]::new);
        String[] valoresCampos = campos.values().stream().toArray(String[]::new);
        String sql = "INSERT INTO " + getNomeTabela(objeto.getClass())
                +" (" + String.join(", ", nomesCampos) + ")"
                +  "  VALUES (" + String.join(", ", valoresCampos) + ")";
        return query(sql) == null;
    }
    
    /**
     * Retorna o Id da ultima linha inserida com sucesso no DB.
     * @return Id do ultimo objeto inserido no DB.
     */
    public static Integer getLastInsertId(){
        
        ResultSet resultSet = query("SELECT LAST_INSERT_ID()");
        
        try {
            if (resultSet.next())
                return resultSet.getInt("LAST_INSERT_ID()");
            
        } catch (SQLException sqlex) {
            System.out.println(sqlex);
        }
        
        return null;
    }
    
    /**
     * Atualiza os dados de um objeto na respectiva tabela.
     *  
     * @param objeto o objeto com os dados a serem atualizados
     * @return se a operação ocorreu com sucesso ou não
     * @throws NotTableException se a classe não for anotada como Table
     */
    public static boolean update(Object objeto) throws NotTableException {
        
        Map<String, String> campos = getCampos(objeto, false);
        System.out.println(campos);
        String nomeId = getNomeId(objeto.getClass());
        String id = campos.remove(String.format("`%s`", nomeId));
        
        /* Caso o id não esteja definido, a atualização não pode ser feita: */
        if (id == null || Integer.parseInt(id) < 0)
            return false;
        
        String[] camposUpdate = campos.keySet().stream()
                .map(nome -> String.format("%s = %s", nome, campos.get(nome)))
                .toArray(String[]::new);
        String sql = "UPDATE `" + getNomeTabela(objeto.getClass())
                + "` SET " + String.join(", ", camposUpdate)
                + " WHERE " + nomeId + " = " + id;
        System.out.println(sql);
        return query(sql) == null;
    }
    
    /**
     * Deleta o registro de uma tabela que contém o id especificado.
     * 
     * @param id do registro a ser deletado
     * @param classe que está associada à tabela em que se deseja deletar
     * @return se a operação ocorreu com sucesso ou não
     * @throws NotTableException se a classe não for anotada como Table
     * @throws InvalidIdException se o id recebido for inválido
     */
    public static boolean delete(int id, Class<?> classe)
            throws NotTableException, InvalidIdException {
        
        String sql = "DELETE FROM " + getNomeTabela(classe)
                + " WHERE " + getNomeId(classe) +" = " + id;
        
        return query(sql) == null;
    }

    /**
     * Obtem os registros de uma tabela.
     * 
     * @param classe que está associada à tabela
     * @return se a operação ocorreu com sucesso ou não
     * @throws NotTableException se a classe não for anotada como Table
     */
    public static <T> List<T> getRegistros(Class<T> classe)
            throws NotTableException {
        
        List<T> registros = new LinkedList<>();
        String[] nomesCampos = Reflection.getAtributos(classe);
        
        try (ResultSet rs = query("SELECT * FROM " + getNomeTabela(classe))) {
            while (rs.next()) {
                T objeto = classe.newInstance();
                for (String campo : nomesCampos) {
                    Object val = rs.getObject(campo);
                    Class<?> classeCampo = classe
                            .getDeclaredField(campo).getType();
                    Method metValueOf;
                    try {
                        metValueOf = classeCampo.getDeclaredMethod("valueOf", String.class);
                    } catch (NoSuchMethodException nsmex) {
                        metValueOf = null;
                    }
                    if (val instanceof Date) {
                        Calendar data = Calendar.getInstance();
                        data.setTime((Date) val);
                        val = data;
                    } else if (val instanceof Integer 
                            && classeCampo.equals(Boolean.class)) {
                        val = val.equals(1); // converte para Boolean
                    } else if (val instanceof String && metValueOf != null) {
                        val = metValueOf.invoke(null, val);
                    }
                    Reflection.setAtributo(objeto, campo, val);
                }
                registros.add(objeto);
            }
        } catch (SQLException sqlex) {
            System.out.println("Não foi possível carregar os registros – "
                    + sqlex);
        } catch (InstantiationException | IllegalAccessException ex) {
            System.out.println("Erro na instanciação dos objetos da"
                    + "classe especificada.");
        } finally {
            return registros;
        }
    }
    
    /**
     * Retorna o nome da tabela à qual a classe de um certo objeto está
     * associada. 
     * É necessário que a classe esteja anotada como Table
     * 
     * @param classe a ser analisada
     * @return nome da tabela referente à classe do objeto
     * @throws NotTableException se a classe não for anotada como Table
     */
    public static String getNomeTabela(Class<?> classe)
            throws NotTableException {
        
        return Optional // resgata o nome da tabela correspondente
                .ofNullable(classe.getAnnotation(Tabela.class))
                .map(a -> a.value())
                .orElseThrow(NotTableException::new);  
    }
    
    /**
     * Retorna o nome do atributo de uma classe que foi definido para
     * ser a chave primária da tabela. 
     * 
     * @param classe a ser analisada
     * @return nome definido na classe para o id 
     * @throws NotTableException se nenhum atributo estiver anotado como ID
     */
    private static String getNomeId(Class<?> classe) throws NotTableException {
        
        Field[] atributos = classe.getDeclaredFields();
        
        for (Field atributo : atributos) {
            if (atributo.getAnnotation(Id.class) != null) {
                return atributo.getName();
            }
        }
        
        throw new NotTableException();
    }
    
    /**
     * Obtém os atributos do objeto e seus respectivos valores. 
     * O resultado é armazenado em um mapa, cujas chaves são os nomes dos 
     * atributos e os valores são o conteúdo de cada campo previamente
     * convertidos para SQL.
     * 
     * @param objeto a ser analisado
     * @return mapa com os atributos
     */
    private static Map<String, String> getCampos(Object objeto, boolean ignoreId) {
        
        Map<String, Object> campos = Reflection.getAtributos(objeto);
        
        if (ignoreId) { // não considera a chave primária caso necessário
            campos.remove(getNomeId(objeto.getClass()));
        }
        
        /* Converte para a notação em SQL: */
        String[] nomesCampos = campos.keySet().stream()
                .map(nome -> String.format("`%s`", nome))
                .toArray(String[]::new);
        String[] valoresCampos = campos.values().stream()
                .map(val -> {
                    Object resultado = val;
                    if (val instanceof String || val instanceof Enum<?>) { // strings entre aspas simples
                        resultado = String.format("'%s'", val);
                    } else if (val instanceof Calendar) { // data no formato SQL
                        resultado = String.format("'%s'",
                                new Date(((Calendar) val).getTimeInMillis()));
                    }
                    return resultado == null ? null : resultado.toString();
                }).toArray(String[]::new);
        
        /* Insere os dados dos campos em um mapa final: */
        Map<String, String> camposResultado = new HashMap<>();
        for (int i = 0; i < nomesCampos.length; i++) {
            if (valoresCampos[i] != null)
                camposResultado.put(nomesCampos[i], valoresCampos[i]);
        }
        
        return camposResultado;
        
    }
    
    /**
     * Retorna a conexão com o banco de dados. 
     * 
     * @return conexão com o banco de dados
     */
    public static Connection getConnection() {
        return CONNECTION;
    }
    
}
