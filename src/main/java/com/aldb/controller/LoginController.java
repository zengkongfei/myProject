package com.aldb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller

public class LoginController {
	@ResponseBody
	@RequestMapping(value="/login")
	public String login(){
		return "123";
	}

}
