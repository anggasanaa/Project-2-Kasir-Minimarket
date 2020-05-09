/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package minimarket.Model;

import java.util.Date;


/**
 *
 * @author Shadam Ramadhan
 */
public class MainModel {
    
    public String name;
    public String type;
    public String stock;
    public String price;
    public Date expired;
    public String user_id;
    public String product_id;
    public String harga;
    public String totalq;
    public String totalp;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStock() {
        return stock;
    }

    public void setStock(String stock) {
        this.stock = stock;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Date getExpired() {
        return expired;
    }

    public void setExpired(Date expired) {
        this.expired = expired;
    }

    public String getProduct_id() {
        return product_id;
    }

    public void setProduct_id(String product_id) {
        this.product_id = product_id;
    }

    public String getTotalq() {
        return totalq;
    }

    public void setTotalq(String totalq) {
        this.totalq = totalq;
    }

    public String getTotalp() {
        return totalp;
    }

    public void setTotalp(String totalp) {
        this.totalp = totalp;
    }
    
    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
   
    public String getHarga() {
        return harga;
    }

    public void setHarga(String harga) {
        this.harga = harga;
    }   
}