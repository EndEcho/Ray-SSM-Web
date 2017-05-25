package com.ray.dao;

import com.ray.model.Order;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/16 0016.
 */
@Repository
public interface OrderDao {
    public List<Order> getAllOrder();
}
