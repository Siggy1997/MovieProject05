package com.movie.web.detail;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DetailController {
	
	@Autowired
	DetailService detailService;
	
	@GetMapping("/detail")
	public String detailPage(@RequestParam("mv_code") String mv_code, Model model) {
		Map<String, Object> detail = detailService.detail(mv_code);
		System.out.println(detail);
		model.addAttribute("detail", detail);
		
	    return "detail"; 
	}
	
}
