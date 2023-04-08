package com.iyf.salesledger.service;

import java.util.List;
import java.util.Map;

public interface SalesResultService {

	List<Map<String, Object>> listByCompany(String company, String batch_month);
}
