package com.kh.finalProject.mail;

import java.util.Properties;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import security.Key;

public class Test1 {
public static void main(String[] args) {
		
		// MIME 형식의 메일을 보내기 위해서 JavaMailSender 인터페이스를 사용한다.
		// 계정설정
		JavaMailSenderImpl sender = new JavaMailSenderImpl();
		sender.setHost("smtp.gmail.com");
		sender.setPort(587);
		sender.setUsername(Key.EMAIL_ADDRESS);
		sender.setPassword(Key.EMAIL_PWD);
		
		//	옵션 설정
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", true);
		prop.put("mail.smtp.starttls.enable", true);
		
		sender.setJavaMailProperties(prop);
		
		//메시지 생성
		SimpleMailMessage message = new SimpleMailMessage();
		message.setSubject("이메일 전송 테스트");
		message.setText("이메일 전송 테스트 첫 번째 입니다.");
		
		String[] to = {Key.EMAIL_ADDRESS};
		message.setTo(to);
		
		String[] cc = {Key.EMAIL_ADDRESS};
		message.setCc(cc);
		
		sender.send(message);
	}
}