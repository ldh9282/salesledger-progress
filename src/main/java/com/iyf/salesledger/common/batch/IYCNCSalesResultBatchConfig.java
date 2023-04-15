package com.iyf.salesledger.common.batch;

import java.time.LocalDateTime;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

import com.iyf.salesledger.common.batch.service.SalesResultBatchService;
import com.iyf.salesledger.dao.SalesLedgerDao;

@Configuration
@EnableScheduling
public class IYCNCSalesResultBatchConfig {

	@Autowired
	private SalesResultBatchService salesResultBatchService;
	
//	@Scheduled(cron = "0 0 20 * * *")
	@Scheduled(cron = "15 * * * * *")
	public void test() {
		System.out.println(LocalDateTime.now() + ": IYCNC 매출실적 배치 작업");
		salesResultBatchService.monthlySalesBatchByCompanyAndDepartment("IYCNC", "ITO");
	}
}
