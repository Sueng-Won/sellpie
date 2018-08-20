package com.teamnameled.sellpie.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("adminMain.do")
	public String adminMain() {
		return "admin/adminMain";
	}
	@RequestMapping("template.do")
	public String template() {
		return "template/template";
	}
	@RequestMapping("templateAdvance.do")
	public String templateAdvance() {
		return "template/templateAdvance";
	}
	@RequestMapping("inspectAu.do")
	public String inspectAu(){
		return "admin/adminMain";
	}
}
