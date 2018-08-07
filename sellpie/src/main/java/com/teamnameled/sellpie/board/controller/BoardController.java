package com.teamnameled.sellpie.board.controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class BoardController {
	
	@RequestMapping("insertBoard.do")
	public String insertBoard(MultipartHttpServletRequest multipartHttpServletRequest){
		//파일경로
		String filePath ="C:\\Upload";
		//파일들을 List형식으로 보관
		List<MultipartFile> files = multipartHttpServletRequest.getFiles("file");
		
		File file = new File(filePath);
		//파일이 없다면 디렉토리를 생성
		if (!file.exists()) {
		    file.mkdirs();
		}

		for (int i = 0; i < files.size(); i++) {
			UUID uuid = UUID.randomUUID();

		   //파일 업로드 소스 여기에 삽입
			if(null!=files.get(i).getOriginalFilename()&&!files.get(i).getOriginalFilename().equals("")){
				file = new File(filePath+"\\"+uuid+files.get(i).getOriginalFilename());
				System.out.println(filePath+"\\"+uuid+files.get(i).getOriginalFilename());
				
				try {
					files.get(i).transferTo(file);
				} catch (IllegalStateException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
			}
		   
			
		}      
		
		return "main";
	}

}
