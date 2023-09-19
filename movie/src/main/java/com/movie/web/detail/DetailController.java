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
		String[] au_img =((String)detail.get("au_img")).split("\\|");
		
		model.addAttribute("detail", detail);
		model.addAttribute("au_img", au_img);
	    return "detail"; 
	}
	
}
