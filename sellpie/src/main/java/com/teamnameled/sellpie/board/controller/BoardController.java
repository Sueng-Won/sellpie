package com.teamnameled.sellpie.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.teamnameled.sellpie.board.model.service.BoardService;
import com.teamnameled.sellpie.board.model.vo.BoardVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@RequestMapping("insertBoard.do")
	public String insertBoard(MultipartHttpServletRequest multipartHttpServletRequest, BoardVo board, HttpServletRequest request){
		int result = -1;
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssZ");
		System.out.println("format : "+sdf.format(today));
		String email = board.getEmail();
		
		//파일경로
		String filePath ="C:\\Upload\\"+email+"\\"+sdf.format(today).toString();
		//파일들을 List형식으로 보관
		List<MultipartFile> files = multipartHttpServletRequest.getFiles("file");
		
		File file = new File(filePath);
		//파일이 없다면 디렉토리를 생성
		if (!file.exists()) {
		    file.mkdirs();
		}
		
		//insert form 넘어올 때 멤버 이메일,게시물 내용은 입력받은 내용 들어있음.
		board.setGcount(0);
		board.setRurl(filePath);
		board.setLatitude(0.1); //sample data
		board.setLongitude(0.1); //sample data
		board.setIsad('N');
		
		String bcontent = board.getBcontent();
		String errorMsg = "";
		if(email==null||email.length()==0||email.equals("")){
			errorMsg = "로그인이 필요한 기능입니다.";
		}else if(bcontent==null||bcontent.length()==0||bcontent.equals("")){
			errorMsg = "내용을 입력해주세요.";
		}else{
			result = boardService.insertBoard(board);
		}
		
		request.setAttribute("msg", errorMsg);
		
		
		if(0<result){
		//랜덤 이름 생성하면서 파일 업로드 소스
			for (int i = 0; i < files.size(); i++) {
				UUID uuid = UUID.randomUUID();
	
				if(null!=files.get(i).getOriginalFilename()&&!files.get(i).getOriginalFilename().equals("")){
					file = new File(filePath+"\\"+uuid+files.get(i).getOriginalFilename());
					
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
		
		}else{
			errorMsg="insertBoard.do에서 에러 발생!!";//에러페이지 만들면 대체
		}
		
		return "main";
	}

}
