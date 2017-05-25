package com.ray.service;

import com.ray.dao.OrderDao;
import com.ray.model.Order;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/16 0016.
 */
@Service
public class OrderService {

    @Autowired
    private OrderDao orderDao;
    @Transactional
    public List<Order> getAllStore() {
        List<Order> orderList = new ArrayList<Order>();
        orderList = orderDao.getAllOrder();
        return orderList;
    }
}
