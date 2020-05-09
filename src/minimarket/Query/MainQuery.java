/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minimarket.Query;

import java.sql.*;
/**
 *
 * @author Shadam Ramadhan
 */
public class MainQuery {
     public String create = "INSERT INTO produk (name, product_type"
             + ", stock, price, expired) VALUES (?,?,?,?,?)";//inventory
     
     public String submit = "INSERT INTO transaksi (user_id, product_id, total_kuantitas"
             + ", harga_satuan, total_harga) VALUES (?,?,?,?,?)"; //kasir
     
     public String get = "SELECT * FROM produk";
     public String showById = "SELECT * FROM produk WHERE id = ?";
     public String showByName = "SELECT * FROM produk WHERE name LIKE ?";
     
     public String update = "UPDATE produk SET name = ? , product_type = ?,"
             + "stock = ?, price = ?, expired = ? WHERE id = ?";
     public String delete = "DELETE FROM produk WHERE id = ? ";
     public String delete2 = "DELETE FROM transaksi WHERE id = ? ";                              
     public String login = "SELECT * FROM users WHERE "
             + "username = ? AND password = ?";
     public String getorder = "SELECT * FROM transaksi";
}

