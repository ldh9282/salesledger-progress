package iyf;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.iyf.salesledger.common.paging.PagingDTO;
import com.iyf.salesledger.common.security.Member;
import com.iyf.salesledger.common.security.MemberAuthority;
import com.iyf.salesledger.dao.EmpPoolDao;
import com.iyf.salesledger.dao.MemberDao;
import com.iyf.salesledger.model.EmpPool;
import com.iyf.salesledger.service.MemberService;

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
	private MemberService memberService;
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder passwordEncoder;
	
//	@Test
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
	
	
	@Test
	public void test2() {
		for (int i = 1; i <= 200; i++) {
			Member member = new Member();
			member.setUsername("user" + i);
			member.setPassword("pw" + i);
			member.setName("이름" + i);
			member.setCompany("IYCNC");
			memberService.insert(member);
		}
		for (int i = 201; i <= 400; i++) {
			Member member = new Member();
			member.setUsername("user" + i);
			member.setPassword("pw" + i);
			member.setName("이름" + i);
			member.setCompany("IBTS");
			memberService.insert(member);
		}
		for (int i = 401; i <= 600; i++) {
			Member member = new Member();
			member.setUsername("user" + i);
			member.setPassword("pw" + i);
			member.setName("이름" + i);
			member.setCompany("IYS");
			memberService.insert(member);
		}
	}
	
//	@Test
	public void test3() {
		PagingDTO pagingDTO = new PagingDTO();
		pagingDTO.setScope("I");
		pagingDTO.setKeyword("user2");
		pagingDTO.setRowAmountPerPage(20);
		memberDao.selectMemberListPagingByKeyword(pagingDTO);
		System.out.println();
	}
	
//	@Test
	public void test4() {
		PagingDTO pagingDTO = new PagingDTO();
		pagingDTO.setScope("I");
		pagingDTO.setKeyword("user2");
		System.out.println(memberDao.selectTotalCount(pagingDTO));
	}
	
}
