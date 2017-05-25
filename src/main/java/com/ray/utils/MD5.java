package com.ray.utils;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * Created by GengRui
 * on 2017/4/24 0024.
 */
public class MD5 {
    public static final String KEY_MD5 = "MD5";

    public static String getKeyMd5(String in) {
        BigInteger bigInteger = null;
        try {
            MessageDigest md = MessageDigest.getInstance(KEY_MD5);
            byte[] input = in.getBytes();
            md.update(input);
            bigInteger = new BigInteger(md.digest());
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return bigInteger.toString(32).toUpperCase();
    }
}
