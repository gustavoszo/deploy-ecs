package com.awscontainer.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("ms-1/main")
public class MainController {

    @GetMapping
    public String hello() {
        return "hello, this is ms-1";
    }

}
