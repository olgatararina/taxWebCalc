package com.app.service;

import java.util.List;

import com.app.model.Record;

public interface RecordService {


    void add(Record record);

    List<Record> showAllRecords();

    List<Record> showRecordsWithPriveleges();
    List<Record> showOrderedRecords();

}

