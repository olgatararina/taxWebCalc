package com.app.dao;

import com.app.model.Record;

import java.util.List;

public interface RecordDao {
    List<Record> allRecords();

    void addRecord(Record record);

    List<Record> getRecordsWithPrivileges();
    List<Record> getOrderedRecords();

}
