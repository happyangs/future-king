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
@Controller
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

    @ResponseBody
    @RequestMapping(value = "/queryByCondition", produces = {"application/json;charset=UTF-8"} ,method = RequestMethod.POST)
    public Response queryProduct(ProductQueryVo productQueryVo){
        Result<Object> result = new Result<>();
        return Response.buildSuccessResponseWithResult(productQueryVo, result.getMeta());
    }
}
