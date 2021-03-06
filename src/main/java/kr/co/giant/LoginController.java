package kr.co.giant;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {
	
	@RequestMapping("gsAdmin")
	public String gsAdmin(@RequestParam Map<String,Object> map, HttpSession session) {
		
		
		if(map.isEmpty()) {
			return "giant/adminLogin";
		}else {
			session.setAttribute("adminLogin", "adminLogin");
			return "redirect:/";
		}
		
		
	}
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

}
