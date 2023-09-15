package com.movie.web.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired
	AdminDAO adminDAO;
	
	public List<Movielist> list() {
	
		return adminDAO.list();
	}

}
