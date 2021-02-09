package kr.co.giant;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	
	@RequestMapping("testImg")
	public String testImg() {
		return "testImg";
	}
	
	@RequestMapping("mapTest")
	public String mapTest() {
		return "test/mapTest";
	}

}
