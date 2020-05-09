/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minimarket.Controller;

import java.text.ParseException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import minimarket.Helper.Helper;
import minimarket.Model.MainModel;
import minimarket.Query.MainQuery;
import java.sql.PreparedStatement;
import java.sql.*;

/**
 *
 * @author Shadam Ramadhan
 */
public class MainController extends BaseController {
    Helper helper = new Helper();
    MainQuery query = new MainQuery();
    
    public ResultSet get(){
        String sql = this.query.get;
        return this.get(sql);
    }
    
    public ResultSet getOrder(){
        String sql = this.query.getorder;
        return this.getorder(sql);
    }
    
    
    public ResultSet login (String username, String password){
        String sql = this.query.login;
        
        Map<Integer, Object>map = new HashMap<>();
        map.put(1, username);
        map.put(2, password);
        
        return this.getWithParameter(map, sql);
    }
    
    public boolean create(MainModel model) throws ParseException{
        String date = helper.parseDateToString(model.getExpired());
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2, model.getType());
        map.put(3, model.getStock());
        map.put(4, model.getPrice());
        map.put(5, date);
        
        String sql = this.query.create;
        
       return this.preparedStatment(map, sql);
    }
    
    
    public ResultSet showById(String id){
        String sql = this.query.showById;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, id);
        
        return this.getWithParameter(map, sql);
    }
    
    
    public ResultSet showByName(String name){
        String sql = this.query.showByName;
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, helper.parseLikeQuery(name));
        
        return this.getWithParameter(map, sql);
    }
    
    
    public Boolean update(String id, MainModel model) throws ParseException{
        String date = helper.parseDateToString(model.getExpired());
        
        Map<Integer, Object> map = new HashMap<>();
        map.put(1, model.getName());
        map.put(2,model.getType());
        map.put(3,model.getStock());
        map.put(4,model.getPrice());
        map.put(5,date);
        map.put(6, id);
        
        String sql = this.query.update;
        
        return this.preparedStatment(map, sql);
    }
    
    
    public boolean submit (MainModel model )throws ParseException{ //untuk create
     Map<Integer,Object>map = new HashMap<>();
     map.put(1, model.getUser_id());
     map.put(2, model.getProduct_id());   
     map.put(3, model.getTotalq());
     map.put(4, model.getHarga());
     map.put(5, model.getTotalp());
     
     
     String sql;
     sql = this.query.submit;
     return this.preparedStatment(map, sql);
}
    
    
    public Boolean delete(String id) throws ParseException{
       Map<Integer, Object> map = new HashMap<>();
       map.put(1, id);
       
       String sql = this.query.delete;
       
       return this.preparedStatment(map, sql);
    }
    
       public Boolean delete2(String id) throws ParseException{
       Map<Integer, Object> map = new HashMap<>();
       map.put(1, id);
       
       String sql = this.query.delete2;
       
       return this.preparedStatment(map, sql);
}
}
