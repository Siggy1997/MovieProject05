package com.movie.web.admin;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AdminDAO {

	List<Movielist> list();

}
