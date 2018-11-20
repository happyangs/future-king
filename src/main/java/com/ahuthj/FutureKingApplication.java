package com.ahuthj;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
@MapperScan("com.ahuthj.mapper")//将项目中对应的mapper类的路径加进来就可以了
public class FutureKingApplication {

	public static void main(String[] args) {
		SpringApplication.run(FutureKingApplication.class, args);
	}
}
