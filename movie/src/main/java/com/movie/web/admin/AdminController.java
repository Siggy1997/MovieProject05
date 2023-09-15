package com.movie.web.admin;

import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@GetMapping(value = { "/", "/admin","home","index" })
	public String admin() {

		return "admin/admin";
	}
	
	@GetMapping("/movieupload")
	public String adminmvuplode(Model model) {
		JSONObject json = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		List<Movielist> list = new ArrayList<Movielist>();
		list = adminService.list();
		
		
		
	
		for (Movielist movie : list) {
			JSONObject movieJson = new JSONObject();
			movieJson.put("mv_poster", movie.getMv_poster());
			movieJson.put("mv_code", movie.getMv_code());
			movieJson.put("mv_name", movie.getMv_name());
			movieJson.put("mv_sdate", movie.getMv_sdate());
			movieJson.put("mv_maker", movie.getMv_maker());
			movieJson.put("au_status", movie.getAu_status());
			movieJson.put("au_acccnt", movie.getAc_acccnt());

			jsonArray.add(movieJson);
		
		}
	
		json.put("jsonlist", jsonArray);
		 model.addAttribute("jsonData", json.toString());
		System.out.println(json.toString());
		
	return "admin/movieupload";

}
}
