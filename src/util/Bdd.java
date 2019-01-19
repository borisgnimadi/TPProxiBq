/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.*;

/**
 *
 * @author Adminl
 */
public class Bdd {

    static String urlDB = "jdbc:oracle:thin:@localhost:1521:XE";
    static String userDB = "boris";
    static String passwordDB = "boris";
    static Connection cnx;

    public static Connection seConnecter() {

        try {

        	Class.forName("com.mysql.jdbc.Driver");
            cnx = DriverManager.getConnection(urlDB, userDB, passwordDB);
            return cnx;

        } catch (Exception e) {
            System.err.println("Connexion erreur BDD !");
            
            throw new RuntimeException(e);
        }

    }

    public static void seDeonnecter(){
        try {
            cnx.close();

        } catch (Exception e) {
            System.out.println("problème de connexion");
        }

    }

}
