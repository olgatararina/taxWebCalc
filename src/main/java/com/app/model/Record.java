package com.app.model;

import javax.persistence.*;

@Entity
@Table(name = "records")
public class Record {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    //    @Column(name = "name")
//    private String name;
//
//    @Column(name = "salary")
//    private int salary;
//
//    @Column (name = "job")
//    private boolean job;
    @Column(name = "period")
    private String period;

    @Column(name = "proceeds")
    private int proceeds;

    @Column(name = "non_operating_income")
    private int nIncome;

    @Column(name = "job")
    private boolean job;

    @Column(name = "privileges")
    private boolean privileges;

    @Column(name = "one_parent")
    private boolean oparent;

    @Column(name = "kids")
    private int kids;

    @Column(name = "disabled_kids")
    private int dkids;

    @Column(name = "dependent")
    private int dependent;

    @Column(name = "insurance_expenses")
    private int iexpenses;

    @Column(name = "education_expenses")
    private int edexpenses;

    @Column(name = "construction_expenses")
    private int cexpenses;

    @Column (name = "buisiness_expenses")
    private int bexpenses;

    @Column (name = "tax_sum")
    private double sum;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPeriod() {
        return period;
    }

    public void setPeriod(String period) {
        this.period = period;
    }

    public int getProceeds() {
        return proceeds;
    }

    public void setProceeds(int proceeds) {
        this.proceeds = proceeds;
    }

    public int getnIncome() {
        return nIncome;
    }

    public void setnIncome(int nIncome) {
        this.nIncome = nIncome;
    }

    public boolean isJob() {
        return job;
    }

    public void setJob(boolean job) {
        this.job = job;
    }

    public boolean isPrivileges() {
        return privileges;
    }

    public void setPrivileges(boolean privileges) {
        this.privileges = privileges;
    }

    public boolean isOparent() {
        return oparent;
    }

    public void setOparent(boolean oparent) {
        this.oparent = oparent;
    }

    public int getKids() {
        return kids;
    }

    public void setKids(int kids) {
        this.kids = kids;
    }

    public int getDkids() {
        return dkids;
    }

    public void setDkids(int dkids) {
        this.dkids = dkids;
    }

    public int getDependent() {
        return dependent;
    }

    public void setDependent(int dependent) {
        this.dependent = dependent;
    }

    public int getIexpenses() {
        return iexpenses;
    }

    public void setIexpenses(int iexpenses) {
        this.iexpenses = iexpenses;
    }

    public int getEdexpenses() {
        return edexpenses;
    }

    public void setEdexpenses(int edexpenses) {
        this.edexpenses = edexpenses;
    }

    public int getCexpenses() {
        return cexpenses;
    }

    public void setCexpenses(int cexpenses) {
        this.cexpenses = cexpenses;
    }

    public int getBexpenses() {
        return bexpenses;
    }

    public void setBexpenses(int bexpenses) {
        this.bexpenses = bexpenses;
    }

    public double getSum() {
        return sum;
    }

    public void setSum(double sum) {
        this.sum = sum;
    }
}
