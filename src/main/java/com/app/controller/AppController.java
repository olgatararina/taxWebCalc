package com.app.controller;

import com.app.model.Record;
import com.app.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@Controller
public class AppController {

    private RecordService recordService;

    @Autowired
    public void setRecordService(RecordService recordService) {
        this.recordService = recordService;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView showform() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("initForm");

        return modelAndView;
    }

    @RequestMapping(value = "/calculate", method = RequestMethod.GET)
    public ModelAndView executePage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("calculateForm");
        return modelAndView;
    }

    @RequestMapping(value = "/calculate", method = RequestMethod.POST)
    public ModelAndView execute(@ModelAttribute(value = "record") Record record) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("success");
        recordService.add(record);
        return modelAndView;
    }

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public ModelAndView allRecords() {
        List<Record> records = recordService.showAllRecords();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("showForm");
        modelAndView.addObject("recordsList", records);
        return modelAndView;
    }

    @RequestMapping(value = "/privilege", method = RequestMethod.GET)
    public ModelAndView selectedPrivilegeRecords() {
        List<Record> records = recordService.showRecordsWithPriveleges();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("showForm");
        modelAndView.addObject("recordsList", records);
        return modelAndView;
    }

    @RequestMapping(value = "/order", method = RequestMethod.GET)
    public ModelAndView selectedOrderedRecords() {
        List<Record> records = recordService.showOrderedRecords();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("showForm");
        modelAndView.addObject("recordsList", records);
        return modelAndView;
    }

}

