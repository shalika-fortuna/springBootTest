package com.school.school.controller;

import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author Shalika Jayathilaka
 */
@org.springframework.web.bind.annotation.RestController
public class RestController {

    @GetMapping("/")
    public String hello(){
        return "This is Rest home page";
    }
}
