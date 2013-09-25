/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ncummins
 */
public class Receipt {
    
    private double total;
    private double tax;
    private double tip;
    private double subTotal;
    private String itemList;
    
    public void setOrderPrice(String[] items) {
        subTotal = 0;
        itemList = "";
        MenuStrategy mi = new MenuItems();
        
        for (String itemOrdered : items) {
            for (Item i : mi.getItems()) {
                if (itemOrdered.equals(i.getName())) {
                    subTotal = subTotal + i.getPrice();
                    itemList += i.getName() + ", ";
                }
            }
        }
        
        itemList = itemList.substring(0, itemList.length()-2);
        
        CashRegister cr = new CashRegister();
        cr.calculateTotal(subTotal);       
        total = cr.getTotal();
        tax = cr.getTax();
        tip = cr.getTip();
    }

    public double getTotal() {
        return total;
    }

    public double getTax() {
        return tax;
    }

    public double getTip() {
        return tip;
    }

    public String getItemList() {
        return itemList;
    }
}
