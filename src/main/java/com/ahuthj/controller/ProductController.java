package com.ahuthj.controller;

import com.ahuthj.model.Product;
import com.ahuthj.model.ProductKey;
import com.ahuthj.service.ProductService;
import com.ahuthj.util.JsonUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * Created by Byant on 2018-05-06.
 */
@Controller
@RequestMapping(value = "product")
public class ProductController {

    private static Logger logger = LoggerFactory.getLogger(ProductController.class);

    @Value("${com.email}")
    private String email;

    @Autowired
    private ProductService userService;

    @ResponseBody
    @RequestMapping(value = "/all/{pageNum}/{pageSize}", produces = {"application/json;charset=UTF-8"})
    public Object findAllUser(@PathVariable("pageNum") int pageNum, @PathVariable("pageSize") int pageSize){



        return userService.findAllProduct(pageNum,pageSize);
    }

    @ResponseBody
    @RequestMapping(value = "/select", produces = {"application/json;charset=UTF-8"})
    public Object select(){
        ProductKey key = new ProductKey();


        key.setId(9);
        key.setProductId(1003);
        logger.info(userService.selectByPrimaryKey(key).toString());
        Product p = userService.selectByPrimaryKey(key);

        String str = JsonUtil.obj2StringPretty(p);
        String str1 = JsonUtil.obj2String(p);
        logger.info(email);
        return str;
    }
}
