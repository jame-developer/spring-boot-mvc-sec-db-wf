package com.jamedevelop.simple.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author jan
 */
@Controller
public class LoginController {
    
    @RequestMapping("/login")    
    public String index(){
        return "login";
    }
}
