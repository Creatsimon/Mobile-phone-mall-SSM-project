package com.fx.service;

import com.fx.entity.Orders;

import java.util.List;

public interface OrderService {

    List<Orders>findAllOrders();

    void buyPhone(Orders orders);

    void deleteOrder(String orderId);

    List<Orders>findNoPayOrders(String username);

    void addShoppingCat(Orders orders);

    Orders findOrderByOrderId(String OrderId);

    void updateOrderIsPay(String orderId);

    List<Orders>findAllOrdersByUsername(String username);

    void addTureOrder(Orders orders);

    List<Orders>findAllTureOrders();

    List<Orders>findAllTureOrdersByTime(String time);

}
