package com.fx.service.impl;

import com.fx.dao.OrderDao;
import com.fx.entity.Orders;
import com.fx.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;

    @Override
    public List<Orders> findAllOrders() {
        return orderDao.findAllOrders();
    }

    @Override
    public void buyPhone(Orders orders) {
        orderDao.buyPhone(orders);
    }

    @Override
    public void deleteOrder(String orderId) {
        orderDao.deleteOrder(orderId);
    }

    @Override
    public List<Orders> findNoPayOrders(String username) {
        return orderDao.findNoPayOrders(username);
    }

    @Override
    public void addShoppingCat(Orders orders) {
        orderDao.addShoppingCat(orders);
    }

    @Override
    public Orders findOrderByOrderId(String OrderId) {
        return orderDao.findOrderByOrderId(OrderId);
    }

    @Override
    public void updateOrderIsPay(String orderId) {
        orderDao.updateOrderIsPay(orderId);
    }

    @Override
    public List<Orders> findAllOrdersByUsername(String username) {
        return orderDao.findAllOrdersByUsername(username);
    }

    @Override
    public void addTureOrder(Orders orders) {
        orderDao.addTureOrder(orders);
    }

    @Override
    public List<Orders> findAllTureOrders() {
        return orderDao.findAllTureOrders();
    }

    @Override
    public List<Orders> findAllTureOrdersByTime(String time) {
        return orderDao.findAllTureOrdersByTime(time);
    }
}
