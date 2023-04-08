package com.iyf.salesledger.dao;

import java.util.List;
import java.util.Map;

public interface SalesResultDao {

	List<Map<String, Object>> listByCompany(String company, String batch_month);

}
