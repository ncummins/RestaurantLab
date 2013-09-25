package model;

import java.util.List;

/**
 * The general contract for all versions of OrderDAO classes.
 * 
 * @author jlombardo
 */
public interface IOrderDAO {

    List<Item> getCurrentMenuChoices() throws RuntimeException;


}
