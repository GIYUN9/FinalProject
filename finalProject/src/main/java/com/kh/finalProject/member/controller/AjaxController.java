package com.kh.finalProject.member.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.finalProject.member.model.service.MemberService;
import com.kh.finalProject.member.model.vo.Member;

@Controller
public class AjaxController {

	@Autowired
	private MemberService memberService;
	
    @RequestMapping(value = "/src.me", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Member> searchMember(String searchText) {
    	ArrayList<Member> mList = memberService.searchMember(searchText);
        return mList;
    }
}
