package com.src.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.src.dao.CompanyModel;
import com.src.mapper.CompanyMapper;

@Service
public class CompanyService {

	@Autowired
	private CompanyMapper mapper;
	
	public List<CompanyModel> getCompanyTree(){
		return mapper.getCompanyTree();
	}
}
