package com.zhangcg.movies.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.druid.sql.PagerUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zhangcg.movies.VO.MovieVO;
import com.zhangcg.movies.domain.Movie;
import com.zhangcg.movies.service.MovieService;

@Controller
public class MovieController {
	@Resource
	MovieService movieService;
	
	@RequestMapping("list")
	public String getAllMovie(MovieVO movieVO, @RequestParam(defaultValue = "1")int pageNow,@RequestParam(defaultValue = "3")int pageSize,Model model) {
		List<Movie> list = movieService.getAllMovie(movieVO,pageNow, pageSize);
		PageInfo info=new PageInfo(list);
		model.addAttribute("info", info);
		model.addAttribute("movieVO", movieVO);
		return "list";
	}
	
	@RequestMapping("searchMovie")
	public String searchMovie() {
		return "search";
	}
}
