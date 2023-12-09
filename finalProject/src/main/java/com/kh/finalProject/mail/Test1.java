package com.kh.finalProject.mail;

import java.util.Properties;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

public class Test1 {
public static void main(String[] args) {
		
		// MIME 형식의 메일을 보내기 위해서 JavaMailSender 인터페이스를 사용한다.
		// 계정설정
		JavaMailSenderImpl sender = new JavaMailSenderImpl();
		sender.setHost("smtp.gmail.com");
		sender.setPort(587);
		sender.setUsername("choechangyeong1@gmail.com");
		sender.setPassword("luzx laqb omon tsvs");
		
		//	옵션 설정
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", true);
		prop.put("mail.smtp.starttls.enable", true);
		
		sender.setJavaMailProperties(prop);
		
		//메시지 생성
		SimpleMailMessage message = new SimpleMailMessage();
		message.setSubject("이메일 전송 테스트");
		message.setText("이메일 전송 테스트 첫 번째 입니다.");
		
		String[] to = {"choechangyeong1@gmail.com"};
		message.setTo(to);
		
		String[] cc = {"choechangyeong1@gmail.com"};
		message.setCc(cc);
		
		sender.send(message);
	}
}