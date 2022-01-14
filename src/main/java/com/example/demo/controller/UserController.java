package com.example.demo.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.entity.User;
import com.example.demo.mapper.UserMapper;
import com.example.demo.util.Msg;
import com.example.demo.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;


@RestController
@RequestMapping( value = "/user")

public class UserController {
    @Autowired
    private UserMapper userMapper;

    /**
     * 登录接口
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value = "/login",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg login(@RequestBody User user){
        try {
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("username", user.getUsername());
            queryWrapper.eq("password", user.getPassword());
            User loginResult=userMapper.selectOne(queryWrapper);
            System.out.println(loginResult);
            if(loginResult==null){
                return ResultUtil.error(202,"用户名或密码错误");
            } else {
                return ResultUtil.success(loginResult.getUsername());
            }
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"出现异常");
        }
    }


    /**
     * 注册接口
     * @param username, password
     * @return
     */
    @RequestMapping(value = "register",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg register(@RequestBody User user){
        User user1 = new User();
    try{
            user1.setUsername(user.getUsername());
            user1.setPassword(user.getPassword());
            int res = userMapper.insert(user1);
            System.out.println(res);
        } catch (DuplicateKeyException e) {
            return ResultUtil.error(201,"用户名已注册");
        } catch (Exception e){
            return ResultUtil.error(400,"出现异常");
        }
        return ResultUtil.success();
    }

    /**
     * 根据用户名查询用户信息
     * @param username
     * @return
     */
    @RequestMapping(value = "getUserInfoByName",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getUserInfoByName(@RequestBody User user) {
        try {
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("username", user.getUsername());
            User res = userMapper.selectOne(queryWrapper);
            System.out.println(res);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"网络请求异常");
        }
    }



    /**
     * 更新用户名
     * @param id, username
     * @return
     */
//    @RequestMapping(value = "updateUsername",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
//    public Msg updateUsername(@RequestBody User user){
//        try {
//            user.setId(user.getId());
//            user.setUsername(user.getUsername());
//            int res = userMapper.updateById(user);
//            System.out.println(res);
//            return ResultUtil.success(res);
//        } catch (Exception e) {
//            e.printStackTrace();
//            return ResultUtil.error(400,"网络连接异常");
//        }
//    }

    /**
     * 更新邮箱地址
     * @param id, email
     * @return
     */
    @RequestMapping(value = "updateEmail",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg updateEmail(@RequestBody User user){
        try {
            user.setId(user.getId());
            user.setEmail(user.getEmail());
            int res = userMapper.updateById(user);
            System.out.println(res);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"网络连接异常");
        }
    }

    /**
     * 更新性别
     * @param id, gender
     * @return
     */
    @RequestMapping(value = "updateGender",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg updateGender(@RequestBody User user){
        try {
            user.setId(user.getId());
            user.setGender(user.getGender());
            int res = userMapper.updateById(user);
            System.out.println(res);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"网络连接异常");
        }
    }

    /**
     * 更新个人介绍
     * @param id, intro
     * @return
     */
    @RequestMapping(value = "updateIntro",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg updateIntro(@RequestBody User user){
        try {
            user.setId(user.getId());
            user.setIntro(user.getIntro());
            int res = userMapper.updateById(user);
            System.out.println(res);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"网络连接异常");
        }
    }

    /**
     * 更新密码
     * @param username
     * @param password
     * @return
     */
    @RequestMapping(value = "updatePassword",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg updatePassword(@RequestBody User user){
        try {
            QueryWrapper<User> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("username", user.getUsername())
            .or()
            .eq("id",user.getId());
            user.setPassword(user.getPassword());
            int res = userMapper.update(user,queryWrapper);

            System.out.println(res);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"网络连接异常");
        }
    }
}
