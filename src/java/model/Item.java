/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ncummins
 */
public class Item {
    private int id;
    private String name;
    private double price;
    
    public Item(){
        //default constructor
    }
    
    public Item(int id, String name, double price){
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    
        @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + this.id;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Item other = (Item) obj;
        if (this.id != other.id) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Item{" + "id=" + id + ", name=" + name 
                + ", price=" + price + '}';
    }
}
