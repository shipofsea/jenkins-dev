package com.spring.boot.docker.controller;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@AllArgsConstructor
@RequestMapping(value = "")
public class HomeController {

    @RequestMapping(value="/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }
}
