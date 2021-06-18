package org.pk.ecommerce.controllers;

import org.pk.ecommerce.entities.Log;
import org.pk.ecommerce.repositories.LogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import java.util.List;

@RestController
@RequestMapping("/logs")
public class LogController {

    @Autowired
    private LogRepository logRepository;

    @GetMapping
    public List<Log> getLog() {
        return this.logRepository.findAll();
    }

    @PostMapping
    public String saveLog(@RequestBody Log log) {
        this.logRepository.save(log);
        return "Logs saved successfully";
    }

}
