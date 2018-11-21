package com.ahuthj.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


/**
 * Created by Byant on 2018-11-22.
 */
@Service
public class MailSender  implements CommandLineRunner {

    @Autowired
    private JavaMailSender mailSender;

    @Autowired
    private Environment environment;

    public void sendText() {
        String from = environment.getProperty("spring.mail.username");
        String to = environment.getProperty("ahuthj@163.com");

        SimpleMailMessage msg = new SimpleMailMessage();
        msg.setFrom(from);
        msg.setTo(to);

        msg.setSubject("first email from yourself");
        msg.setText("hello world!");

        this.mailSender.send(msg);
    }

    @Override
    public void run(String... strings) throws Exception {

    }
}
