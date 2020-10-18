package top.hawile.entity;

import java.io.Serializable;
import java.util.Date;

public class Atm implements Serializable {
    private Integer id;

    private String date;

    private String name;

    private Integer number;

    private Double total;

    private Double total2;

    private String remark;

    private String state;

    private Double factoryTotal;

    private Integer factoryNumber;

    private Double factoryProfit;

    private Double headofficeTotal;

    private Integer headofficeNumber;

    private Double headofficeProfit;

    private Date updateTime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date == null ? null : date.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Double getTotal() {
        return total;
    }

    public void setTotal(Double total) {
        this.total = total;
    }

    public Double getTotal2() {
        return total2;
    }

    public void setTotal2(Double total2) {
        this.total2 = total2;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public Double getFactoryTotal() {
        return factoryTotal;
    }

    public void setFactoryTotal(Double factoryTotal) {
        this.factoryTotal = factoryTotal;
    }

    public Integer getFactoryNumber() {
        return factoryNumber;
    }

    public void setFactoryNumber(Integer factoryNumber) {
        this.factoryNumber = factoryNumber;
    }

    public Double getFactoryProfit() {
        return factoryProfit;
    }

    public void setFactoryProfit(Double factoryProfit) {
        this.factoryProfit = factoryProfit;
    }

    public Double getHeadofficeTotal() {
        return headofficeTotal;
    }

    public void setHeadofficeTotal(Double headofficeTotal) {
        this.headofficeTotal = headofficeTotal;
    }

    public Integer getHeadofficeNumber() {
        return headofficeNumber;
    }

    public void setHeadofficeNumber(Integer headofficeNumber) {
        this.headofficeNumber = headofficeNumber;
    }

    public Double getHeadofficeProfit() {
        return headofficeProfit;
    }

    public void setHeadofficeProfit(Double headofficeProfit) {
        this.headofficeProfit = headofficeProfit;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

}