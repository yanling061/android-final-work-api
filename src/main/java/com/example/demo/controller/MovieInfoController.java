package com.example.demo.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.demo.entity.MovieInfo;
import com.example.demo.mapper.MovieInfoMapper;
import com.example.demo.util.Msg;
import com.example.demo.util.ResultUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/movie")
public class MovieInfoController {
    @Autowired
    private MovieInfoMapper movieInfoMapper;

    /**
     * 根据id查询电影
     * @param movieId
     * @return
     */
    @RequestMapping(value = "/getMovieById",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getMovieById(@RequestBody MovieInfo movieInfo) {
        try {
            QueryWrapper<MovieInfo> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("movie_id", movieInfo.getMovieId());
            MovieInfo res = movieInfoMapper.selectOne(queryWrapper);
            System.out.println(res);
            return ResultUtil.success(res);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400, "连接异常");
        }
    }

    /**
     * 根据电影类型查询电影
     * @param movieInfo
     * @return
     */
    @RequestMapping(value = "/getMovieByType",method = RequestMethod.POST,produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getMovieByType(@RequestBody MovieInfo movieInfo) {
        try {
            QueryWrapper<MovieInfo> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("type", movieInfo.getType());
            List<MovieInfo> movieList = movieInfoMapper.selectList(queryWrapper);
            movieList.forEach(System.out::println);
            return ResultUtil.success(movieList);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400, "连接异常");
        }
    }


    /**
     * 模糊查询电影
     * @param movieInfo
     * @return
     */
    @RequestMapping(value = "/getMovies", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getMovies(@RequestBody MovieInfo movieInfo) {
        try {
            QueryWrapper<MovieInfo> queryWrapper = new QueryWrapper<>();
            queryWrapper
                    .like("movie_name", movieInfo.getMovieName())
                    .or()
                    .like("type", movieInfo.getType())
                    .or()
                    .like("cast", movieInfo.getCast());
            List<MovieInfo> movieList = movieInfoMapper.selectList(queryWrapper);
            movieList.forEach(System.out::println);
            return ResultUtil.success(movieList);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"出现异常");
        }
    }

    @RequestMapping(value = "/getAllMovies", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public Msg getAllMovies() {
        try {
            List<MovieInfo> movieList = movieInfoMapper.selectList(null);
            movieList.forEach(System.out::println);
            return ResultUtil.success(movieList);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error(400,"出现异常");
        }
    }
}
