package kr.co.giant;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class CombineController {
	
	@Inject
	private SqlSessionTemplate sqlSession;
	
	@RequestMapping("perform")
	public String perform(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		session.setAttribute("colAlias", "per");
		session.setAttribute("tbAlias", "perform");
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 15);
		}
		
		map.put("colAlias", "per");  //컬럼 명칭 예) (      )_seq, (      )_name
		map.put("tbAlias", "perform"); //테이블명 giant_web_(     )
		List<Map<String, Object>> list = sqlSession.selectList("mapperCombine.CombineList", map);
		
		int count = sqlSession.selectOne("mapperCombine.CombineListTotal", map);
		Map<String, Object> pageMap = pageNation(map, count);
		
		model.addAttribute("pageMap", pageMap);
		model.addAttribute("searchTxt", map);
		model.addAttribute("list", list);
		model.addAttribute("boardType", "perform");
		
		
		
		return "giant/comBineList";
	}
	
	@RequestMapping("recruit")
	public String recruit(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		session.setAttribute("colAlias", "rcu");
		session.setAttribute("tbAlias", "recruit");
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 15);
		}
		
		map.put("colAlias", "rcu");  //컬럼 명칭 예) (      )_seq, (      )_name
		map.put("tbAlias", "recruit"); //테이블명 giant_web_(     )
		List<Map<String, Object>> list = sqlSession.selectList("mapperCombine.CombineList", map);
		
		int count = sqlSession.selectOne("mapperCombine.CombineListTotal", map);
		Map<String, Object> pageMap = pageNation(map, count);
		
		model.addAttribute("pageMap", pageMap);
		model.addAttribute("searchTxt", map);
		model.addAttribute("list", list);
		model.addAttribute("boardType", "recruit");
		
		return "giant/comBineList";
	}
	
	@RequestMapping("news")
	public String news(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		session.setAttribute("colAlias", "news");
		session.setAttribute("tbAlias", "news");
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 15);
		}
		
		map.put("colAlias", "news");  //컬럼 명칭 예) (      )_seq, (      )_name
		map.put("tbAlias", "news"); //테이블명 giant_web_(     )
		List<Map<String, Object>> list = sqlSession.selectList("mapperCombine.CombineList", map);
		
		int count = sqlSession.selectOne("mapperCombine.CombineListTotal", map);
		Map<String, Object> pageMap = pageNation(map, count);
		
		model.addAttribute("pageMap", pageMap);
		model.addAttribute("searchTxt", map);
		model.addAttribute("list", list);
		model.addAttribute("boardType", "news");
		
		return "giant/comBineList";
	}
	
	@RequestMapping("board")
	public String board(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		session.setAttribute("colAlias", "brd");
		session.setAttribute("tbAlias", "board");
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 15);
		}
		
		
		
		map.put("colAlias", "brd");  //컬럼 명칭 예) (      )_seq, (      )_name
		map.put("tbAlias", "board"); //테이블명 giant_web_(     )
		List<Map<String, Object>> list = sqlSession.selectList("mapperCombine.CombineList", map);
		
		int count = sqlSession.selectOne("mapperCombine.CombineListTotal", map);
		Map<String, Object> pageMap = pageNation(map, count);
		
		model.addAttribute("pageMap", pageMap);
		model.addAttribute("searchTxt", map);
		model.addAttribute("list", list);
		model.addAttribute("boardType", "board");
		
		return "giant/comBineList";
	}
	
	@RequestMapping("notice")
	public String notice(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		session.setAttribute("colAlias", "ntc");
		session.setAttribute("tbAlias", "notice");
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 15);
		}
		
		
		map.put("colAlias", "ntc");  //컬럼 명칭 예) (      )_seq, (      )_name
		map.put("tbAlias", "notice"); //테이블명 giant_web_(     )
		List<Map<String, Object>> list = sqlSession.selectList("mapperCombine.CombineList", map);
		
		int count = sqlSession.selectOne("mapperCombine.CombineListTotal", map);
		Map<String, Object> pageMap = pageNation(map, count);
		
		model.addAttribute("pageMap", pageMap);
		model.addAttribute("searchTxt", map);
		model.addAttribute("list", list);
		model.addAttribute("boardType", "notice");
		
		return "giant/comBineList";
	}
	
	@RequestMapping("faq")
	public String faq(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		session.setAttribute("colAlias", "faq");
		session.setAttribute("tbAlias", "faq");
		
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 15);
		}
		
		
		map.put("colAlias", "faq");  //컬럼 명칭 예) (      )_seq, (      )_name
		map.put("tbAlias", "faq"); //테이블명 giant_web_(     )
		List<Map<String, Object>> list = sqlSession.selectList("mapperCombine.CombineList", map);
		
		int count = sqlSession.selectOne("mapperCombine.CombineListTotal", map);
		Map<String, Object> pageMap = pageNation(map, count);
		
		model.addAttribute("pageMap", pageMap);
		model.addAttribute("searchTxt", map);
		model.addAttribute("list", list);
		model.addAttribute("boardType", "faq");
		
		return "giant/comBineList";
	}
	      
	@RequestMapping("qna")
	public String qna(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		session.setAttribute("colAlias", "qna");
		session.setAttribute("tbAlias", "qna");
		
		if(map.isEmpty()) {
			map.put("pageNo", 1);
			map.put("listSize", 15);
		}
		
		map.put("colAlias", "qna");  //컬럼 명칭 예) (      )_seq, (      )_name
		map.put("tbAlias", "qna"); //테이블명 giant_web_(     )
		List<Map<String, Object>> list = sqlSession.selectList("mapperCombine.CombineList", map);
		
		int count = sqlSession.selectOne("mapperCombine.CombineListTotal", map);
		Map<String, Object> pageMap = pageNation(map, count);
		
		model.addAttribute("pageMap", pageMap);
		model.addAttribute("searchTxt", map);
		model.addAttribute("list", list);
		model.addAttribute("boardType", "qna");
		
		return "giant/comBineList";
	}
	
	public Map<String, Object> pageNation(Map<String, Object> map, int count){
		
		int curPage = Integer.parseInt(map.get("pageNo").toString());
		
		int PAGE_SCALE = 15;
		int BLOCK_SCALE = 10;
		
		
		int totPage = (int) Math.ceil(count*1.0 / PAGE_SCALE);
		int totBlock = (int)Math.ceil(totPage / BLOCK_SCALE);
        int curBlock = (int)Math.ceil((curPage-1) / BLOCK_SCALE)+1;
        int blockBegin = (curBlock-1)*BLOCK_SCALE+1;
        int blockEnd = blockBegin+BLOCK_SCALE-1;
        if(blockEnd > totPage) blockEnd = totPage;
        int prevPage = (curPage == 1)? 1:(curBlock-1)*BLOCK_SCALE;
        int nextPage = curBlock > totBlock ? (curBlock*BLOCK_SCALE) : (curBlock*BLOCK_SCALE)+1;
        if(nextPage >= totPage) nextPage = totPage;
        
        Map<String, Object> pageMap = new HashMap<String, Object>();
        
        pageMap.put("totPage", totPage);
        pageMap.put("curPage", curPage);
        pageMap.put("totBlock", totBlock);
        pageMap.put("curBlock", curBlock);
        pageMap.put("prevPage", prevPage);
        pageMap.put("blockBegin", blockBegin);
        pageMap.put("blockEnd", blockEnd);
        pageMap.put("nextPage", nextPage);
		return pageMap;
		
	}
	
	
	
	@RequestMapping("write")
	public String write(@RequestParam String boardType, Model model) {
		
		model.addAttribute("boardType", boardType);
		
		return "giant/comBineWrite";
	}
	
	@RequestMapping("register")
	public String register(@RequestParam Map<String, Object> map, HttpSession session) {
		
		map.put("colAlias",  session.getAttribute("colAlias").toString() );
		map.put("tbAlias", session.getAttribute("tbAlias").toString() );

		
		int insert = sqlSession.insert("mapperCombine.insert", map);
		
		String url = map.get("tbAlias").toString();
		
		return "redirect:"+url;
	}
	
	@RequestMapping("detail")
	public String detail(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		map.put("colAlias", session.getAttribute("colAlias").toString());
		map.put("tbAlias", session.getAttribute("tbAlias").toString());
		
		Map<String, Object> detailMap = sqlSession.selectOne("mapperCombine.detail", map);
		
		model.addAttribute("detailMap", detailMap);
		
		return "giant/comBineDetail";
	}
	
	@RequestMapping("updateView")
	public String updateView(@RequestParam Map<String, Object> map, Model model, HttpSession session) {
		
		map.put("colAlias", session.getAttribute("colAlias").toString());
		map.put("tbAlias", session.getAttribute("tbAlias").toString());
		
		Map<String, Object> detailMap = sqlSession.selectOne("mapperCombine.detail", map);
		
		model.addAttribute("detailMap", detailMap);
		
		return "giant/comBineUpdate";
	}
	
	@RequestMapping("update")
	public String update(@RequestParam Map<String, Object> map, HttpSession session) {
		map.put("colAlias", session.getAttribute("colAlias").toString());
		map.put("tbAlias", session.getAttribute("tbAlias").toString());
		
		int update = sqlSession.update("mapperCombine.update", map);
		
		String url = map.get("tbAlias").toString();
		
		return "redirect:"+url;
	}

}
