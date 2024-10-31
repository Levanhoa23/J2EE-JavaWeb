/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package hoa.dev.util;

import java.security.SecureRandom;

/**
 *
 * @author ASUS
 */
public class StringHelper {
      static final String AB = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
    static SecureRandom rnd = new SecureRandom();

    public static String randomString(int len) {
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            sb.append(AB.charAt(rnd.nextInt(AB.length())));
        }
        return sb.toString();
    }

    public static void main(String[] args) {
        int length = 10; // Độ dài của chuỗi ngẫu nhiên
        String randomCode = randomString(length);
        System.out.println("Random Code: " + randomCode);
    }
}
