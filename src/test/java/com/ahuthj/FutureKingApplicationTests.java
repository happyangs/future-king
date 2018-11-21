package com.ahuthj;

import com.ahuthj.util.HttpClientUtil;
import com.ahuthj.util.MailSender;
import com.alibaba.fastjson.JSON;
import org.apache.http.client.ClientProtocolException;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@RunWith(SpringRunner.class)
@SpringBootTest
public class FutureKingApplicationTests {

	private static Logger logger = LoggerFactory.getLogger(FutureKingApplicationTests.class);

	@Autowired
	private JavaMailSender javaMailSender;

	@Autowired
	MailSender mailSender;

	@Test
	public void contextLoads() {
		logger.info("info级别的日志");
		logger.warn("warn级别的日志");
		logger.error("error级别的日志");
	}


	@Test
	public void testSendPostDataByJson() throws ClientProtocolException, IOException {
		String url = "http://public-api.nj.ins.product.tuniu.org/ins-product/shn/manage/line/query/queryInsDetail";
		Map<String, String> map = new HashMap<String, String>();
		map.put("resIds", "1930451953");
		String body = HttpClientUtil.sendPostDataByJson(url, JSON.toJSONString(map), "utf-8");
		System.out.println("2响应结果：" + body);
	}

	@Test
	public void sendGetData()  throws ClientProtocolException, IOException {
		String url = "http://public-api.nj.ins.product.tuniu.org/ins-product/MonitorProxy";
		String body = HttpClientUtil.sendGetData(url,"utf-8");
		System.out.println("3响应结果：" + body);
	}


	/**
	 * QQ邮箱
	 * @throws Exception
	 */
	@Test
	public void sendSimpleMail() throws Exception {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("632669794@qq.com");
		message.setTo("ahuthj@163.com");
		message.setSubject("主题：简单邮件");
		message.setText("测试邮件内容");
		javaMailSender.send(message);
	}
	@Test
	public void sendSimpleMail1() throws Exception {
		mailSender.sendText();
//		https://yq.aliyun.com/articles/670214?spm=a2c4e.11155472.0.0.570db848cd5XpU
	}

}
