package com.ray.model;

import java.math.BigInteger;
import java.util.Date;

/**
 * Created by GengRui
 * on 2017/5/11 0011.
 */
public class User {
    private BigInteger userId;
    private String account;
    private String userName;
    private String userIcon;
    private String userPwd;
    private String userPwdsalt;
    private String userEmail;
    private BigInteger userTele;
    private Date userBirthday;
    private BigInteger userIdnum;
    private String userGander;
    private Integer role;
    private Date registerTime;

    public String getUserName() {
        return userName;
    }


    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserIcon() {
        return userIcon;
    }

    public void setUserIcon(String userIcon) {
        this.userIcon = userIcon;
    }

    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    public String getUserPwdsalt() {
        return userPwdsalt;
    }

    public void setUserPwdsalt(String userPwdsalt) {
        this.userPwdsalt = userPwdsalt;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public Date getUserBirthday() {
        return userBirthday;
    }


    public void setUserBirthday(Date userBirthday) {
        this.userBirthday = userBirthday;
    }

    public String getUserGander() {
        return userGander;
    }


    public void setUserGander(String userGander) {
        this.userGander = userGander;
    }

    public Integer getRole() {
        return role;
    }

    public void setRole(Integer role) {
        this.role = role;
    }

    public Date getRegisterTime() {
        return registerTime;
    }

    public void setRegisterTime(Date registerTime) {
        this.registerTime = registerTime;
    }

    public BigInteger getUserId() {
        return userId;
    }

    public void setUserId(BigInteger userId) {
        this.userId = userId;
    }

    public BigInteger getUserTele() {
        return userTele;
    }

    public void setUserTele(BigInteger userTele) {
        this.userTele = userTele;
    }

    public BigInteger getUserIdnum() {
        return userIdnum;
    }

    public void setUserIdnum(BigInteger userIdnum) {
        this.userIdnum = userIdnum;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userIcon='" + userIcon + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userPwdsalt='" + userPwdsalt + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userTele=" + userTele +
                ", userBirthday=" + userBirthday +
                ", userIdnum=" + userIdnum +
                ", userGander='" + userGander + '\'' +
                ", role=" + role +
                ", registerTime=" + registerTime +
                '}';
    }
}
