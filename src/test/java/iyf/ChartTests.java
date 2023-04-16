package iyf;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.iyf.salesledger.common.batch.model.SalesResult;
import com.iyf.salesledger.dao.ChartDao;
import com.iyf.salesledger.service.ChartService;
import com.iyf.salesledger.service.SalesResultService;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/mybatis-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
})
public class ChartTests {
	

	@Setter(onMethod_ = @Autowired)
	private ChartService chartService;
	
	@Setter(onMethod_ = @Autowired)
	private SalesResultService salesResultService;
	
//	@Test
	public void test() {
		System.out.println(chartService.salesThisYearResultListByCompanyAndDepartment("IYCNC", "ITO"));
	}
	
	@Test
	public void test2() {
//		sales_result_id(시퀀스라 넣을 필요 없음), total_sales_amount, total_purchase_amount, 
//		sales_source, client,
//		subcontract, project_name,
//		batch_month, company,
//		handwrite(서비스에서 넣어줌)
		for (int i = 1; i <= 1000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202301");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 2000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202302");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 1000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202303");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 3000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202304");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 2000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202305");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 1000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202306");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 4000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202307");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 3000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202308");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 2000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202309");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 1000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202310");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 4000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202311");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
		for (int i = 1; i <= 5000; i++) {
			SalesResult salesResult = new SalesResult();
			salesResult.setTotal_sales_amount(10000);
			salesResult.setTotal_purchase_amount(8000);
			salesResult.setSales_source("매출처" + i);
			salesResult.setClient("거래처" + i);
			salesResult.setSubcontract("도급내역" + i);
			salesResult.setProject_name("프로젝트명" + i);
			salesResult.setBatch_month("202312");
			salesResult.setCompany("IYCNC");
			salesResult.setDepartment("ITO");
			salesResultService.insertByHandwrite(salesResult);
		}
	}
	
}
