package kr.co.giant;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.WebApplicationContext;

@Controller
public class GiantController {
	
	public static String ADDRESS = "서울특별시 금천구 가산디지털1로 168 우림라이온스밸리 A동 6층 606호  &nbsp;&nbsp;  TEL: 02.2038.4626    &nbsp;&nbsp;   E-mail : giantsolution@giantsolution.co.kr<br>\r\n";
	
	@Inject
	private SqlSessionTemplate sqlSession;
	
	@RequestMapping("/")
	public String giantMain(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.setAttribute("ADDRESS", ADDRESS);
		
		return "giant/main";
	}
	
	@RequestMapping("/ceoMent")
	public String ceoMeet() {
		
		return "giant/ceoMent";
	}
	
	@RequestMapping("/companyHistory")
	public String companyHistory() {
		return"giant/companyHistory";
	}
	
	@RequestMapping("/companyGroup")
	public String companyGroup() {
		return "giant/companyGroup";
	}
	
	@RequestMapping("/companyAdress")
	public String companyAdress() {
		return "giant/companyAddress";
	}
	
	
	@RequestMapping("/rcu")
	public String rec() {
		return "giant/rcu";
	}
	
	@RequestMapping("/pro")
	public String product() {
		return "giant/pro";
	}
	
	
	@RequestMapping("/adminLogin")
	public String admin() {
		return "giant/adminLogin";
	}
	
	
	
		
}
