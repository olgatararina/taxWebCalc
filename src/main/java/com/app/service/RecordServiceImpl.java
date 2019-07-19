package com.app.service;


import com.app.dao.RecordDao;
import com.app.model.Record;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RecordServiceImpl implements RecordService {

    private RecordDao recordDao;

    @Autowired
    public void setRecordDao (RecordDao recordDao){
        this.recordDao=recordDao;
    }

    @Override
    @Transactional
    public void add(Record record) {
        recordDao.addRecord(record);
    }

    @Override
    @Transactional
    public List<Record> showAllRecords() {
        return recordDao.allRecords();
    }

    @Override
    @Transactional
    public List<Record> showRecordsWithPriveleges() {
        return recordDao.getRecordsWithPrivileges();
    }

    @Override
    @Transactional
    public List<Record> showOrderedRecords() {
        return recordDao.getOrderedRecords();
    }
}
