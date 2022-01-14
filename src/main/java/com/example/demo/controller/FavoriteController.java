package com.example.demo.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.entity.Favorite;
import com.example.demo.mapper.FavoriteMapper;
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
@RequestMapping(value = "/favorite")
public class FavoriteController {
    @Autowired
    private FavoriteMapper favoriteMapper;

    /**
     * 根据用户id查询收藏夹
     * @param favorite
     * @return
     */
    @RequestMapping(value = "/getFavoriteByUserId",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getFavoriteById(@RequestBody Favorite favorite) {
        try{
            QueryWrapper<Favorite> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("user_id", favorite.getUserId());
            List<Favorite> list = favoriteMapper.selectList(queryWrapper);
            list.forEach(System.out::println);
            return ResultUtil.success(list);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400, "网络连接异常");
        }
    }


    /**
     * 添加收藏
     * @param favorite
     * @return
     */
    @RequestMapping(value = "/addFavorite",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg addFavorite(@RequestBody Favorite favorite) {
        try{
            Favorite fav = new Favorite();
            fav.setUserId(favorite.getUserId());
            fav.setMovieId(favorite.getMovieId());
            int res = favoriteMapper.insert(fav);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400, "网络连接异常");
        }
    }

    /**
     * 取消收藏
     * @param favorite
     * @return
     */
    @RequestMapping(value = "/cancelFavorite",method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg cancelFavorite(@RequestBody Favorite favorite) {
        try{
            QueryWrapper<Favorite> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("user_id", favorite.getUserId());
            queryWrapper.eq("movie_id", favorite.getMovieId());
            int res = favoriteMapper.delete(queryWrapper);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400, "网络连接异常");
        }
    }

}
