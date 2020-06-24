package com.example.demo.controller;

import com.example.demo.model.Foo;
import com.example.demo.repository.FooRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.Optional;
import java.util.logging.Logger;

@RestController
public class HelloController {

    private static Logger logger = Logger.getLogger(HelloController.class.getName());

    @Autowired
    public FooRepository fooRepository;

    @GetMapping("/hello")
    public String hello() {
        return "hello";
    }

    @GetMapping("/hello/{fooId}")
    public String helloWithFoo(@PathVariable Integer fooId) {
        logger.info("helloWithFoo fooId=" + fooId);
        Optional<Foo> optionalFoo = fooRepository.findById(fooId);
        return optionalFoo.map(foo -> "hello " + foo.getName()).orElse("hello nobody");
    }
}
