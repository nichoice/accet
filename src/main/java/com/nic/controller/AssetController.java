package com.nic.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.nic.pojo.Asset;
import com.nic.pojo.Pages;
import com.nic.service.AssetServer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Created by Nic on 2017/6/5.
 *
 */
@Controller
public class AssetController {
    private final Logger logger = LoggerFactory.getLogger(AssetController.class);
    @Autowired
    private AssetServer assetServer;
    @ResponseBody
    @RequestMapping(value = "/asset", method = RequestMethod.GET)
    public Pages<Asset> GetShowEvent(HttpServletRequest request, HttpServletResponse response) {
        return showAsset(request, response, "GET");
    }

    @ResponseBody
    @RequestMapping(value = "/asset", method = RequestMethod.POST)
    public Pages<Asset> PostShowEvent(HttpServletRequest request, HttpServletResponse response) throws Exception {
        return showAsset(request, response, "POST");
    }

    public Pages<Asset> showAsset(HttpServletRequest request , HttpServletResponse response , String method){
        String limit = request.getParameter("limit");
        String nowPage = request.getParameter("nowPage");
        // 当前页数
        int nowPaged = Integer.parseInt(null == nowPage ? "1" : nowPage);
        // 每页显示数
        int limitd = Integer.parseInt(null == limit ? "10" : limit);

        Pages<Asset> pages = new Pages<>();
        //开始分页,参数1为请求第几页,参数2为请求条数
        PageHelper.startPage(nowPaged, limitd);

        List<Asset> assetList = assetServer.selectByPrimaryKey();
        PageInfo<Asset> pageInfo = new PageInfo<Asset>(assetList);
        int total = (int) pageInfo.getTotal();

        pages.setSuccess(true);
        pages.setMsg("共查询出" + total + "条数据!");
        pages.setRecords(assetList);
        pages.setTotal(total);
        pages.setStatus(0);
        return pages;
    }
}
