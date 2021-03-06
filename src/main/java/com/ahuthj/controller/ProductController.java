package com.ahuthj.controller;

import com.ahuthj.common.model.Response;
import com.ahuthj.model.request.ProductQueryVo;
import com.ahuthj.service.BkProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
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

    @Autowired
    private BkProductService bkProductService;

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

    @RequestMapping(value = "/queryByCondition" ,method = RequestMethod.POST)
    Response queryProduct(@RequestBody ProductQueryVo productQueryVo){
        return Response.buildSuccessResponseWithInfo(bkProductService.pageQuery(productQueryVo));
    }
}
