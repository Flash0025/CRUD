/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.finlogic.hrms.Config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import javax.sql.DataSource;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import org.springframework.jdbc.datasource.SingleConnectionDataSource;

/**
 *
 * @author Krishna
 */

@Configuration
public class Config {
    
    @Bean
    public JdbcTemplate getTemplate() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test_krishna", "root", "krishna");
        DataSource ds = new SingleConnectionDataSource(con, true);
        return new JdbcTemplate(ds);
    } 
}
