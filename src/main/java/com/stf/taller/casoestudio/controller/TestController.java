package com.stf.taller.casoestudio.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
//@RequestMapping("/hello")
public class TestController {

    @GetMapping
    public ResponseEntity<?> helloWorld(){
        return new ResponseEntity<>("Hello world from Spring Boot | Taller Cloud/DevOps Stefanini.", HttpStatus.OK);
    }
}
