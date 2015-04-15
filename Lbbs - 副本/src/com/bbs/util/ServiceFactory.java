package com.bbs.util;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bbs.dao.UserDao;

public class ServiceFactory {
	 private static BeanFactory factory = null;     
     static { 
        //     ClassPathXmlApplicationContext context = 
		//	new ClassPathXmlApplicationContext(new String[] {"applicationContext.xml"}); 
    	
    	 ClassPathXmlApplicationContext context = 
            	 new ClassPathXmlApplicationContext("applicationContext.xml");

             factory = (BeanFactory) context; 
     }         
     /** 
      * 获得用户服务类 
      * @return 用户服务 
      */ 
     public static UserDao getUserInfoDAO(){ 
             return (UserDao) factory.getBean("userDAOProxy"); 
     } 
}
