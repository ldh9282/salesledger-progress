package com.iyf.salesledger.common.batch.dao;

import org.springframework.web.bind.annotation.PathVariable;

public interface SalesResultBatchDao {

	void delete(@PathVariable String company, @PathVariable String department);

	void insert(@PathVariable String company, @PathVariable String department);

}
