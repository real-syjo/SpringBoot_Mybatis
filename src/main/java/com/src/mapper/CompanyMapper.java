package com.src.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.src.dao.CompanyModel;

@Repository
@Mapper
public interface CompanyMapper {

	List<CompanyModel> getCompanyTree();
}
