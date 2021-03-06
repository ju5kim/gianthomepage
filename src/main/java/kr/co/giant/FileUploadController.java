package kr.co.giant;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.omg.CORBA.Request;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import lombok.extern.slf4j.Slf4j;



@Controller
public class FileUploadController {

	
	
	@Inject
	private SqlSessionTemplate sqlSession;

	@RequestMapping("/fileUploadForm")
	public String upload() {
		return "giant/fileUploadForm";
	}
	/*
	 * 파일 업로드시  저장 경로 /giantsolutionPOTAL/src/main/webapp/resources/uploadFiles 
	 * 각 페이지마다 표시되는 중앙에 이미지에 따라  폴더를 구분하였다. 그래서 업로드시 각각 해당 경로에 저장된다.
	 * 
	 * 이미지 내용파일을 바꾸고 싶다면 
	 * 1. 해당 폴더에 있는 이미지 파일이름을 똑같이 하고  파일을 바꾸는 방법
	 * 2. 관리자에서 파일업로드를 사용해서 파일을 업로드 하는 방법이 있다.
	*/ 
	@RequestMapping(method=RequestMethod.POST,value= "/fileUpload")
	public String file_upload(MultipartHttpServletRequest multipartHttpServletRequest) {
		//파일 저장경로 설정
		String FileSavePath = multipartHttpServletRequest.getSession().getServletContext().getRealPath("/resources/uploadFiles/");
		Iterator iterator = multipartHttpServletRequest.getFileNames();
		while (iterator.hasNext()) {
			String file_tag_name = (String) iterator.next();
			System.out.println("파일 태그 name ::::");
			System.out.println(file_tag_name);
			System.out.println("");
			MultipartFile multipartFile = multipartHttpServletRequest.getFile(file_tag_name);
			String real_file_name = multipartFile.getOriginalFilename();
			System.out.println("real_file_name :::: "+real_file_name);

			File image_file = new File(FileSavePath+"/"+ file_tag_name+"/"+ real_file_name);
			if (multipartFile.getSize() > 0) { //멀티파트파일이 존재한다면
				if (!image_file.exists()) { // 해당경로에 파일이 존재하지 않으면
					image_file.getParentFile().mkdirs(); // 상위폴더를 생성한다.
				}
				try { // 폴더를 검색해서 내부에 있는 파일을 삭제한다.
					File folder = new File(FileSavePath+"/"+ file_tag_name+"/");
					if(folder.exists()) {
					File[] folder_list = folder.listFiles(); //파일리스트 얻어오기
								
					  for (int j = 0; j < folder_list.length; j++) {
							folder_list[j].delete(); //파일 삭제 
							System.out.println("파일이 삭제되었습니다.");
						}
					}
					multipartFile.transferTo(image_file); // 파일을 업로드한다.
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}//end of while
		return "giant/main";
	}
}
