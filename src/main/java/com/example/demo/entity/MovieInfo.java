package com.example.demo.entity;

import lombok.Data;

@Data
public class MovieInfo {
    private Integer movieId;
    private String movieName;
    private String movieImage;
    private String cast;
    private Integer releaseYear;
    private String country;
    private String type;
    private String movieUrl;
    private String movieCover;
    private String movieIntro;
    private String director;
}
