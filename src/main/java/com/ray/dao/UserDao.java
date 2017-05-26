package com.ray.dao;

import com.ray.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by GengRui
 * on 2017/5/11 0011.
 */
@Repository
public interface UserDao {
    public List<User> getAllUser();

    public List<User> getUserById(User user);

    public List<User> getUserByAccount(User user);

    public Integer addUser(User user);

    public Integer deleteUserById(User user);

    public Integer updateUser(User user);

    public Integer getUserCount();
}
