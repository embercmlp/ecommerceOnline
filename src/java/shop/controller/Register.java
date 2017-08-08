/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author EOV
 */
@Controller
@RequestMapping("/register")
public class Register {
     @RequestMapping(method = RequestMethod.GET)
 public String index(ModelMap modelMap) {
 modelMap.put("title", "Register");
 modelMap.put("action", "register");
 return "register.index";
 }
}