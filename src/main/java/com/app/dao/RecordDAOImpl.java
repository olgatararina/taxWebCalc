package com.app.dao;

import com.app.model.Record;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RecordDAOImpl implements RecordDao {
    private SessionFactory sessionFactory;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Record> allRecords() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("From Record").list();
    }

    @Override
    public void addRecord(Record record) {
        Session session = sessionFactory.getCurrentSession();
        record.setSum(doCalculation(record));
        session.persist(record);
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Record> getRecordsWithPrivileges() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("From Record where privileges = true").list();
    }

    @Override
    @SuppressWarnings("unchecked")
    public List<Record> getOrderedRecords() {
        Session session = sessionFactory.getCurrentSession();
        return session.createQuery("From Record as rec order by rec.sum DESC  ").list();
    }

    public double doCalculation(Record record) {

        int v1=0;
        if (record.getPeriod().equals("квартал"))
            v1 = 3;
        if (record.getPeriod().equals("6 месяцев"))
            v1 = 6;
        if (record.getPeriod().equals("9 месяцев"))
            v1 = 9;
        if (record.getPeriod().equals("12 месяцев"))
            v1 = 12;
        double s2 = record.getProceeds();
        double s3 = record.getnIncome();
        boolean v4 = record.isJob();
        boolean v5 = record.isPrivileges();
        boolean v6 = record.isOparent();
        int k7 = record.getKids();
        int k8 = record.getDkids();
        int k9 = record.getDependent();
        double s10 = record.getIexpenses();
        double s11 = record.getEdexpenses();
        double s12 = record.getCexpenses();
        double s13 = record.getBexpenses();
        double result = 0;
        double res1 = s2+s3;
        double res2 = 0;
        double res3 = 0;
        double res4 = 0;
        double res5 = 0;
        double res6 = 0;

// if job true
        if (v4 && (s13 <= res1)) {
            result = (res1 - s13) * 0.16;
        }
//if job false
        if (!v4 && (s13 <= res1)) {

            if ((res1 - s13) <= 1502) {
                res2 = res1 - (83 * v1);
                if (res2 < 0) {
                    res2 = 0;
                }
            } else res2 = res1;
            if (v5) {
                res3 = res2 - (117 * v1);
            }
            if (!v5)
                res3 = res2;
            if (res3 < 0)
                res3 = 0;

            if (v6 && k7 >= 0 && k9 >= 0 && k8 <= k7)
                res4 = (res3 - ((v1 * 46) * (k7 + k9)));
            if (!v6 && k7 == 1 && k9 >= 0 && k8 == 0)
                res4 = (res3 - ((v1 * 24) * (k7 + k9)));
            if (!v6 && k7 == 1 && k9 >= 0 && k8 == 1)
                res4 = (res3 - ((v1 * (k7 * 46)) + (k9 * 24)));
            if (!v6 && k7 > 1 && k9 >= 0 && k8 <= k7)
                res4 = (res3 - ((v1 * 46) + (k7 + k9)));
            if (res4 < 0)
                res4 = 0;
            if (s10 <= 16)
                res5 = res4 - s10;
            if (s10 > 16)
                res5 = res4 - 16;
            if (res5 < 0)
                res5 = 0;
            res6 = res5 - (s11 + s12 + s13);
            if (res6 < 0)
                res6 = 0;
            result = res6 * 0.16;
        }
        return result;

    }
}
