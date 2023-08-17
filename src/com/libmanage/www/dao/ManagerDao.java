package com.libmanage.www.dao;

import com.libmanage.www.enity.Manager;
import com.libmanage.www.tools.DaoFactory;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ManagerDao {
    Connection conn = DaoFactory.getConn();
    PreparedStatement ps = null;
    ResultSet rs = null;

//    用户查询
    public Manager findManager(String username, String password){
        Manager manager =null;
        String sql = "select * from manager where username=? and `password`=?";

        try{
            ps = conn.prepareStatement(sql);
            ps.setString(1,username);
            ps.setString(2,password);
            rs = ps.executeQuery();
            while (rs.next()){
                manager = new Manager();
                manager.setUsername(rs.getString("username"));
                manager.setPassword(rs.getString("password"));
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return manager;
    }
}
