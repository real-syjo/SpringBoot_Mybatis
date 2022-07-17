package com.src.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.src.dao.CompanyModel;
import com.src.service.CompanyService;

@Controller
public class HomeController {
	
	@Autowired
	private CompanyService companyService;
    
	
	@RequestMapping(value="/main",method={RequestMethod.GET})
	public String tree() {
	
		return "main";
	}
	
	
	
	@RequestMapping(value="/tree.do",method={RequestMethod.GET}) 
	public ModelAndView tree(ModelAndView mav) {
		mav.setViewName("tree");
		return mav;
	}

	@RequestMapping(value="/treelist.do",method= {RequestMethod.GET})
	@ResponseBody 
	public List<CompanyModel> jqCompanyTree(CompanyModel vo,  Model model) throws Exception {
		List<CompanyModel> dataList = companyService.getCompanyTree();
		return dataList;
	}
}