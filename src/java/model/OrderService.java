package model;

import java.util.*;

/**
 * This service class decouples the controller code from the data access code.
 * The advantage is that we can change what we access without breaking
 * anything. For example, here we can switch between production and development
 * databases.
 * 
 * @author jlombardo
 */
public class OrderService {
    private List<Item> menuList;
    private List<Item> orderList;
    private IOrderDAO orderDao;

    public OrderService() {
        initItemsDb();
    }

    private void initItemsDb() {
        orderDao = new OrderDAOProduction();
        menuList = orderDao.getCurrentMenuChoices();
        orderList = new ArrayList<Item>();
    }
    

    public List<Item> getMenuList() {
        return menuList;
    }

    public void setMenuList(List<Item> menuList) {
        this.menuList = menuList;
    }

    public List<Item> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Item> orderList) {
        this.orderList = orderList;
    }

    public IOrderDAO getOrderDao() {
        return orderDao;
    }

    public void setOrderDao(IOrderDAO orderDao) {
        this.orderDao = orderDao;
    }

}
