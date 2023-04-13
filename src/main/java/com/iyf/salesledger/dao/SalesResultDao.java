package com.iyf.salesledger.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface SalesResultDao {

	List<Map<String, Object>> listByCompany(@Param("company") String company, @Param("batch_month") String batch_month);

}
