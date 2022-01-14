package com.example.demo.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.entity.PlayHistory;
import com.example.demo.entity.User;
import com.example.demo.mapper.PlayHistoryMapper;
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
@RequestMapping(value = "/playHistory")
public class PlayHistoryController {
    @Autowired
    private PlayHistoryMapper playHistoryMapper;

    /**
     * 根据用户id查询播放记录
     * @param playHistory
     * @return
     */
    @RequestMapping(value = "/getPlayHistoryByUserId", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getPlayHistoryByUserId(@RequestBody PlayHistory playHistory){
        try{
            QueryWrapper<PlayHistory> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("user_id", playHistory.getUserId());
            List<PlayHistory> list = playHistoryMapper.selectList(queryWrapper);
            list.forEach(System.out::println);
            return ResultUtil.success(list);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"连接异常");
        }
    }

    @RequestMapping(value = "/addPlayHistory", method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg addPlayHistory(@RequestBody PlayHistory playHistory){
        try{
            PlayHistory history = new PlayHistory();
            history.setUserId(playHistory.getUserId());
            history.setMovieId(playHistory.getMovieId());
            int res = playHistoryMapper.insert(history);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"连接异常");
        }
    }

    @RequestMapping(value = "/removePlayHistory", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg removePlayHistory(@RequestBody PlayHistory playHistory){
        try{
            QueryWrapper<PlayHistory> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("user_id", playHistory.getUserId());
            queryWrapper.eq("movie_id", playHistory.getMovieId());
            int res = playHistoryMapper.delete(queryWrapper);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"连接异常");
        }
    }
}
