/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ncummins
 */
public class CashRegister {
    
    private final double TAX_RATE = .07;
    private final double TIP_RATE = .15;
    private double tax;
    private double tip;
    private double total;
    
    public CashRegister(){
    }

    
    
    public void calculateTotal(double subTotal){
        tax = subTotal * TAX_RATE;
        tip = subTotal * TIP_RATE;
        total = subTotal + tax + tip;
    }
    
    
    public double getTax() {
        return tax;
    }

    public double getTip() {
        return tip;
    }

    public double getTotal() {
        return total;
    }
}
