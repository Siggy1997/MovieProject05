package com.movie.web.mypage;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyPageService {
	
	@Autowired
	private MyPageDAO mypageDAO;

	public Map<String, Object> mypage() {
		return mypageDAO.mypage();
	}

	public List<Map<String, Object>> couponList() {
		return mypageDAO.couponList();
	}

	public int couponChk(String cCode) {
		return mypageDAO.couponChk(cCode);
	}

	public void couponUpdate(Map<String, Object> map) {
		mypageDAO.couponChk(map);
	}

	
}
