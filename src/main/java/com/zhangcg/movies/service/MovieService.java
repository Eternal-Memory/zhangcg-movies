package com.zhangcg.movies.service;

import java.util.List;

import com.zhangcg.movies.VO.MovieVO;
import com.zhangcg.movies.domain.Movie;

public interface MovieService {
	List<Movie> getAllMovie(MovieVO movieVO,int pageNum,int pageSize);
}
