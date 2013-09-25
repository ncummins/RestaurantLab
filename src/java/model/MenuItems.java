/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ncummins
 */
public class MenuItems implements MenuStrategy{
    
    private final Item[] items = {
        new Item(1, "Beer", 1.99),
        new Item(2, "Steak", 15.99),
        new Item(3, "Pizza", 11.99),
        new Item(4, "Lobster", 19.99),
        new Item(5, "Cheeseburger", 6.99),
        new Item(6, "Fishnchips", 12.99),
    };

    public final Item[] getItems(){
        return items;
    }
}
