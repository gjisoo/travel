package com.kdt.miniproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginCotroller {
 
 @RequestMapping("/login")
 public String init(){
  return "/login/login";
 }
}
