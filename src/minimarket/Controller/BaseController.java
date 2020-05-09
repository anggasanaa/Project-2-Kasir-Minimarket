/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minimarket.Controller;


import com.sun.rowset.CachedRowSetImpl;
import java.sql.SQLException;
import java.util.Map;
import minimarket.Connection.DBConnection;
import java.sql.*;
import java.sql.PreparedStatement;
/**
 *
 * @author Shadam Ramadhan
 */
public class BaseController {
    DBConnection koneksi = new DBConnection();
    
    public boolean preparedStatment(Map< Integer, Object> map, String sql){
        try{
            Connection con = (Connection) koneksi.open();
            PreparedStatement ps = con.prepareStatement(sql);
            
            for (Map.Entry<Integer, Object>entry : map.entrySet()){
                ps.setString(entry.getKey(), entry.getValue().toString());
            }
            
            int rows = ps.executeUpdate();
            con.close();
            return rows !=0;
        }
        catch (SQLException e){
            System.err.println(e.getMessage());
            return false;
        }
    }
    
    public ResultSet get(String sql) {
        try{
            Connection con = (Connection) koneksi.open();
            
            Statement state = con.createStatement();
            ResultSet rs = state.executeQuery(sql);
            
            CachedRowSetImpl crs = new CachedRowSetImpl();
            crs.populate(rs);
            
            con.close();
            return crs;
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            return null;
        }
        
    
    }
    
      public ResultSet getorder(String sql){
      try {
           com.mysql.jdbc.Connection con = (com.mysql.jdbc.Connection) koneksi.open();
           com.mysql.jdbc.Statement state =  (com.mysql.jdbc.Statement) con.createStatement();
           ResultSet rs = state.executeQuery(sql);
           
           CachedRowSetImpl crs = new CachedRowSetImpl();
           crs.populate(rs);
           
           con.close();
           return crs;
      } catch (Exception e) {
          System.out.println(e.getMessage());
          return null;
      }
  }
    
   public ResultSet getWithParameter(Map<Integer, Object>map, String sql){
       try{
           Connection con = (Connection) koneksi.open();
           
           PreparedStatement ps = con.prepareStatement(sql);
           
           for(Map.Entry<Integer, Object> entry : map.entrySet()){
               ps.setString(entry.getKey(), entry.getValue().toString());
           }
           
           ResultSet rs = ps.executeQuery();
           
           CachedRowSetImpl crs = new CachedRowSetImpl();
           crs.populate(rs);
           
           con.close();
           return crs;
       }
       catch(Exception e){
           System.out.println(e.getMessage());
           return null;
       }
       
   }  public ResultSet gettransaksi(String sql){
      try {
           com.mysql.jdbc.Connection con = (com.mysql.jdbc.Connection) koneksi.open();
           com.mysql.jdbc.Statement state =  (com.mysql.jdbc.Statement) con.createStatement();
           ResultSet rs = state.executeQuery(sql);
           
           CachedRowSetImpl crs = new CachedRowSetImpl();
           crs.populate(rs);
           
           con.close();
           return crs;
      } catch (Exception e) {
          System.out.println(e.getMessage());
          return null;
      }
   }
}
