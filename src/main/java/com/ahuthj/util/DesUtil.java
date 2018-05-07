package com.ahuthj.util;

import java.io.IOException;
import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class DesUtil {

	  private final static String DES = "DES";
	  
	  private static final Logger LOG = LoggerFactory.getLogger(DesUtil.class);
	  
	     
	    /**
	     * Description 根据键值进行加密
	     * @param data
	     * @param key  加密键byte数组
	     * @return
	     * @throws Exception
	     */
	    public static String encrypt(String data, String key)  {
	    	
	    	if(StringUtils.isEmpty(data)){
	    		return "";
	    	}
	    	
	        byte[] bt;
	        String strs ="";
			try {
				bt = encrypt(data.getBytes(), key.getBytes());
				strs = Base64.encodeBase64String(bt);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				LOG.error("Exception",e);
			}
	       
	        return strs;
	    }
	 
	    /**
	     * Description 根据键值进行解密
	     * @param data
	     * @param key  加密键byte数组
	     * @return
	     * @throws IOException
	     * @throws Exception
	     */
	    public static String decrypt(String data, String key) 
	             {
	    	if(StringUtils.isEmpty(data)){
	    		return "";
	    	}
	        byte[] bt=new byte[]{};
	       
	        byte[] buf;
			try {
				buf = Base64.decodeBase64(data.getBytes());
			    bt = decrypt(buf,key.getBytes());
			} catch (IOException e) {
				// TODO Auto-generated catch block
				LOG.error("IOException",e);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				LOG.error("Exception",e);
			}
	       
	        return new String(bt);
	    }
	 
	    /**
	     * Description 根据键值进行加密
	     * @param data
	     * @param key  加密键byte数组
	     * @return
	     * @throws Exception
	     */
	    private static byte[] encrypt(byte[] data, byte[] key) throws Exception {
	        // 生成一个可信任的随机数源
	        SecureRandom sr = new SecureRandom();
	 
	        // 从原始密钥数据创建DESKeySpec对象
	        DESKeySpec dks = new DESKeySpec(key);
	 
	        // 创建一个密钥工厂，然后用它把DESKeySpec转换成SecretKey对象
	        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(DES);
	        SecretKey securekey = keyFactory.generateSecret(dks);
	 
	        // Cipher对象实际完成加密操作
	        Cipher cipher = Cipher.getInstance(DES);
	 
	        // 用密钥初始化Cipher对象
	        cipher.init(Cipher.ENCRYPT_MODE, securekey, sr);
	 
	        return cipher.doFinal(data);
	    }
	     
	     
	    /**
	     * Description 根据键值进行解密
	     * @param data
	     * @param key  加密键byte数组
	     * @return
	     * @throws Exception
	     */
	    private static byte[] decrypt(byte[] data, byte[] key) throws Exception {
	        // 生成一个可信任的随机数源
	        SecureRandom sr = new SecureRandom();
	 
	        // 从原始密钥数据创建DESKeySpec对象
	        DESKeySpec dks = new DESKeySpec(key);
	 
	        // 创建一个密钥工厂，然后用它把DESKeySpec转换成SecretKey对象
	        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance(DES);
	        SecretKey securekey = keyFactory.generateSecret(dks);
	 
	        // Cipher对象实际完成解密操作
	        Cipher cipher = Cipher.getInstance(DES);
	 
	        // 用密钥初始化Cipher对象
	        cipher.init(Cipher.DECRYPT_MODE, securekey, sr);
	 
	        return cipher.doFinal(data);
	    }
	}
