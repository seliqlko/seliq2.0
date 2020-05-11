/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package OTPGenerator;

import java.util.Random;

/**
 *
 * @author rishabh
 */
public class OTPGenerator {
    public static String OTP(int len){
        String numbers="0123456789";
        Random random=new Random();
        char[] otp=new char[len];
        for(int i=0;i<len;i++){
            otp[i]=numbers.charAt(random.nextInt(10));
        }
        return new String(otp);
    }
}
