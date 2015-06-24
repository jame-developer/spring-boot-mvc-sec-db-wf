package com.jamedevelop.simple.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author jan
 */
@Controller
@RequestMapping("/")
public class HomeController {
    
    @RequestMapping({"/","/home"})    
    public String index(){
        return "home";
    }
}
