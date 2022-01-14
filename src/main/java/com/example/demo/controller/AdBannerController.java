package com.example.demo.controller;

import com.example.demo.entity.AdBanner;
import com.example.demo.mapper.AdBannerMapper;
import com.example.demo.mapper.UserMapper;
import com.example.demo.util.Msg;
import com.example.demo.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/banner")
public class AdBannerController {
    @Autowired
    private AdBannerMapper adBannerMapper;

    @RequestMapping(value = "/getImage", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getBanner(){
        try{
            List<AdBanner> bannerList = adBannerMapper.selectList(null);
            bannerList.forEach(System.out::println);
            return ResultUtil.success(bannerList);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"出现异常");
        }
    }
}
