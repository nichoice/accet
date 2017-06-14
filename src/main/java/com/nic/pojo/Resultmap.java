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
    private static final long serialVersionUID = 3346470836595972999L;
    @Excel(name = "设备名称")
    private String d_name;
    @Excel(name = "IP地址")
    private String d_address;
    @Excel(name = "故障")
    private String t_name;
    @Excel(name = "code")
    private String c_name;
    @Excel(name = "故障时间" , format = "yyyy-MM-dd hh:mm:ss")
    private Date time;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getD_name() {
        return d_name;
    }

    public void setD_name(String d_name) {
        this.d_name = d_name;
    }

    public String getD_address() {
        return d_address;
    }

    public void setD_address(String d_address) {
        this.d_address = d_address;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getC_name() {
        return c_name;
    }

    public void setC_name(String c_name) {
        this.c_name = c_name;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
