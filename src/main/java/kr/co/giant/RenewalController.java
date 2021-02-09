package kr.co.giant;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RenewalController {

	@RequestMapping("/renewal")
	public String renewal() {
		
		return "giant/renewal";
	}
	
}
