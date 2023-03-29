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
import com.iyf.salesledger.model.EmpPool;

import lombok.Setter;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({
	"file:src/main/webapp/WEB-INF/spring/mybatis-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
	"file:src/main/webapp/WEB-INF/spring/security-context.xml",
})
public class MemberTests {
	

	@Setter(onMethod_ = @Autowired)
	private MemberDao memberDao;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder passwordEncoder;
	
	@Test
	public void test() {
		Member member = new Member();
		member.setUsername("admin");
		member.setPassword(passwordEncoder.encode("admin"));
		memberDao.insertMember(member);
		
		MemberAuthority memberAuthority = new MemberAuthority();
		memberAuthority.setUsername("admin");
		memberAuthority.setAuthority("ROLE_ADMIN");
		memberDao.insertAuthority(memberAuthority);
	}
	
}
