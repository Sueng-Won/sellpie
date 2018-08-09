package com.teamnameled.sellpie.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teamnameled.sellpie.board.model.service.BoardService;
import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.resource.model.service.ResourceService;
import com.teamnameled.sellpie.resource.model.vo.ResourceVo;

@Controller
public class BoardController {
	
	@Autowired
	BoardService boardService;
	
	@Autowired
	ResourceService resourceService;
	
	@RequestMapping("insertBoard.do")
	public String insertBoard(MultipartHttpServletRequest multipartHttpServletRequest, BoardVo board, HttpServletRequest request){
		int boardResult = -1;
		int resourceResult = 0;
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssZ");
		String bcontent = board.getBcontent();
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
		board.setIsad('N');
		
		String errorMsg = "";
		
		if(email==null||email.length()==0||email.equals("")){
			errorMsg = "로그인이 필요한 기능입니다.";
		}else if(bcontent==null||bcontent.length()==0||bcontent.trim().equals("")){
			errorMsg = "내용을 입력해주세요.";
		}else{
			int fileLength = 0;
			for (int i = 0; i < files.size(); i++) {
					
				UUID uuid = UUID.randomUUID();
	
				if(null!=files.get(i).getOriginalFilename()&&!files.get(i).getOriginalFilename().equals("")){
					file = new File(filePath+"\\"+uuid+files.get(i).getOriginalFilename());
					board.setRurl(filePath);
					ResourceVo resource = new ResourceVo();
					resource.setRsrc(filePath+"\\"+uuid+files.get(i).getOriginalFilename());
					resourceResult += resourceService.insertResource(resource);
					if(fileLength<resourceResult){
						fileLength++;
					}
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
			
			
			if(resourceResult==fileLength){
				
				
				boardResult = boardService.insertBoard(board);
				
				if(0<boardResult){
					
				}else{
					errorMsg="insertBoard에서 에러 발생!!";//에러페이지 만들면 대체
				}
			}else{
				errorMsg="db에 file insert중 에러";
			}

			
		}
	
		request.setAttribute("msg", errorMsg);
		
		return "main";
	}
	
	/*@RequestMapping(value="selectBoardList.do")
	public @ResponseBody List<BoardVo> selectBoardList() {
		List<BoardVo> list = new ArrayList<BoardVo>();
		list = boardService.selectBoardList();
	
		return list;
	}*/
	
	@RequestMapping(value="selectBoardList.do")
	public ModelAndView selectBoardList(ModelAndView mv) {
		List<BoardVo> list = boardService.selectBoardList();
		
		
		mv.addObject("list" , list);
		mv.setViewName("main");
		
		return mv;
	}
}
