
package com.mycompany.login;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author XYZ
 */
public class My_CNX {
    
    private static final String servername="localhost";
    private static final String username="root";
    private static final String dbname="users_db";
    private static final Integer portnumber=3306;
    private static final String password="";  
    public static Connection getConnection()
    {
        
        Connection cnx=null;
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setServerName(servername);
        dataSource.setUser(username);
        dataSource.setPassword(password);
        dataSource.setDatabaseName(dbname);
        dataSource.setPortNumber(portnumber);
        
        try {
            cnx=dataSource.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger("Get Connection_-> "+My_CNX.class.getName()).log(Level.SEVERE,null,ex);
        }
        
        return cnx;
    }
}
