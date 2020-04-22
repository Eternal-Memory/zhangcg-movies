package com.zhangcg.movies.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.zhangcg.movies.VO.MovieVO;
import com.zhangcg.movies.dao.MovieMapper;
import com.zhangcg.movies.domain.Movie;
import com.zhangcg.movies.service.MovieService;
@Service
public class MovieServiceImpl implements MovieService{
	@Resource
	MovieMapper mapper;
	
	@Override
	public List<Movie> getAllMovie(MovieVO movieVO,int pageNum, int pageSize) {
		// TODO Auto-generated method stub
		PageHelper.startPage(pageNum, pageSize);
		List<Movie> list = mapper.getAllMovie(movieVO);
		return list;
	}

}
