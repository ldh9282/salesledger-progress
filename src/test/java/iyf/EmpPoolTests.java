package iyf;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.iyf.salesledger.dao.EmpPoolDao;
import com.iyf.salesledger.model.EmpPool;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/mybatis-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
})
public class EmpPoolTests {
	

	@Setter(onMethod_ = @Autowired)
	private EmpPoolDao empPoolDao;
	
	@Test
	public void test() {
		List<EmpPool> empPools = empPoolDao.list();
		System.out.println(empPools);
	}
	
}
