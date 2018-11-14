package com.ahuthj.controller;

import cn.dotfashion.soa.api.vo.Response;
import cn.dotfashion.soa.api.vo.Result;
import com.ahuthj.model.request.ProductQueryVo;
import com.ahuthj.util.JsonUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;


/**
 * Created by Byant on 2018-05-06.
 */
@RestController
@RequestMapping(value = "product")
public class ProductController {

    private static Logger logger = LoggerFactory.getLogger(ProductController.class);

    @Value("${com.email}")
    private String email;


    @ResponseBody
    @RequestMapping(value = "/all/{pageNum}/{pageSize}", produces = {"application/json;charset=UTF-8"})
    public Object findAllUser(@PathVariable("pageNum") int pageNum, @PathVariable("pageSize") int pageSize){
        return null;
    }

    @ResponseBody
    @RequestMapping(value = "/select", produces = {"application/json;charset=UTF-8"})
    public Object select(){
        logger.info(email);
        return null;
    }

    @RequestMapping(value = "/queryByCondition", produces = {"application/json;charset=UTF-8"} ,method = RequestMethod.POST)
    Response queryProduct(@RequestBody ProductQueryVo productQueryVo){
        logger.info(JsonUtil.obj2String(productQueryVo));
        return Response.buildSuccessResponseWithInfo(JsonUtil.obj2String(productQueryVo));
    }
}
