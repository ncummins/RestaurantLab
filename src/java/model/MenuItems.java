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
        new Item("Beer", 1.99),
        new Item("Steak", 15.99),
        new Item("Pizza", 11.99),
        new Item("Lobster", 19.99),
        new Item("Cheeseburger", 6.99),
        new Item("Fishnchips", 12.99),
    };

    public final Item[] getItems(){
        return items;
    }
}
