package iyf;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

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
public class SalesLedgerTests {
	

	@Setter(onMethod_ = @Autowired)
	private SalesLedgerDao salesLedgerDao;
	
//	@Test
	public void test1() {
//		salesLedgerDao.selectOne(1);
		salesLedgerDao.selectOne(2);
	}
	
//	@Test
	public void test2() {
		salesLedgerDao.list();
	}
	
//	@Test
	public void test3() {
		SalesLedger salesLedger = salesLedgerDao.selectOne(1);
		
		if (salesLedger != null) {
			
			salesLedger.setPayday(25);
			salesLedgerDao.update(salesLedger);
		}
	}
	
//	@Test
	public void test4() {
		SalesLedger salesLedger = new SalesLedger();
		salesLedger.setEmp_id(2L);
		salesLedger.setModifier("이주영");
		
		salesLedgerDao.insert(salesLedger);
	}
	
	@Test
	public void test5() {
		salesLedgerDao.listByCompany("IYCNC");
	}
	
}
