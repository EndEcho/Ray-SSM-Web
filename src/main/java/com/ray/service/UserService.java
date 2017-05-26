package com.ray.service;

import com.ray.dao.UserDao;
import com.ray.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/11 0011.
 */
@Service
public class UserService {
    @Autowired
    private UserDao userDao;

    @Transactional
    public List<User> getAllUser() {
        List<User> usersList = new ArrayList<User>();
        usersList = userDao.getAllUser();
        return usersList;
    }

    @Transactional
    public BigInteger addUser(User user) {
        userDao.addUser(user);
        return user.getUserId();
    }


    public List<User> getUserById(User user) {
        List<User> usersList = new ArrayList<User>();
        usersList = userDao.getUserById(user);
        return usersList;
    }

    public List<User> getUserByAccount(User user) {
        List<User> usersList = new ArrayList<User>();
        usersList = userDao.getUserByAccount(user);
        return usersList;
    }

    public BigInteger deleteUserById(User user) {
        userDao.deleteUserById(user);
        return user.getUserId();

    }

    public BigInteger updateUser(User user) {
        userDao.updateUser(user);
        return user.getUserId();
    }

    public Integer getUserCount() {
        Integer userCount = userDao.getUserCount();
        return userCount;
    }

}
