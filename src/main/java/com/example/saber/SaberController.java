package com.example.saber;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.slf4j.LoggerFactory;
import org.slf4j.Logger;

import java.time.LocalDateTime;

@RestController
public class SaberController {
	//Logger logger = LoggerFactory.getLogger(SaberController.class);

    @GetMapping("/saber")
    public String getSaber() {
	//logger.info("Hello to Saber ....");
        return "hello world from saber \n time :" + LocalDateTime.now();
    }


    @GetMapping
    public String get() {
        return "hello world \n time :" + LocalDateTime.now();
    }
}
