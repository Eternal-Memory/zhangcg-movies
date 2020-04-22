package com.zhangcg.movies.dao;

import java.util.List;

import com.zhangcg.movies.VO.MovieVO;
import com.zhangcg.movies.domain.Movie;

public interface MovieMapper {
	List<Movie> getAllMovie(MovieVO movieVO);
}
