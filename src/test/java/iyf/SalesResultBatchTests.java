package iyf;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.iyf.salesledger.common.batch.dao.SalesResultBatchDao;
import com.iyf.salesledger.common.batch.service.SalesResultBatchService;
import com.iyf.salesledger.common.security.Member;
import com.iyf.salesledger.common.security.MemberAuthority;
import com.iyf.salesledger.dao.EmpPoolDao;
import com.iyf.salesledger.dao.MemberDao;
import com.iyf.salesledger.dao.SalesLedgerDao;
import com.iyf.salesledger.model.EmpPool;
import com.iyf.salesledger.model.SalesLedger;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/mybatis-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
})
public class SalesResultBatchTests {
	

	@Setter(onMethod_ = @Autowired)
	private SalesResultBatchService salesLResultBatchService;
	@Setter(onMethod_ = @Autowired)
	private SalesResultBatchDao salesLResultBatchSeDao;
	
	@Test
	public void test() {
		salesLResultBatchService.monthlySalesBatchByCompanyAndDepartment("IYCNC", "ITO");
		System.out.println();
	}
	
	
}
