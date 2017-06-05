package com.nic.pojo;

import org.jeecgframework.poi.excel.annotation.Excel;
import org.jeecgframework.poi.excel.annotation.ExcelTarget;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Nic on 2017/5/27.
 * 查询结果返回集
 */
@ExcelTarget("event_list")
public class Resultmap implements Serializable {
    private static final long serialVersionUID = -721663237729842431L;
    @Excel(name = "IP地址")
    private String address;
    @Excel(name = "故障时间" , format = "yyyy-MM-dd hh:mm:ss")
    private Date time;
    @Excel(name = "设备名称")
    private String name;

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}
