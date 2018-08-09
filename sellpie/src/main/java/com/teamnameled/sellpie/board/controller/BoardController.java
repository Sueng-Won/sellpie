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
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

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
		
		
		// 웹서버 컨테이너 경로 추출함
		String root = request.getSession().getServletContext().getRealPath("resources");
		//파일경로
		String filePath = root+"\\data\\"+email+"\\"+sdf.format(today).toString();
		String savePath = "resources/data/"+email+"/"+sdf.format(today).toString();
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
					board.setRurl(filePath);
					file = new File(filePath+"\\"+uuid+files.get(i).getOriginalFilename());
					ResourceVo resource = new ResourceVo();
					resource.setRsrc(savePath+"/"+uuid+files.get(i).getOriginalFilename());
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
	
	@RequestMapping("selectBoardList.do")
	public ModelAndView selectBoardList(HttpSession session, ModelAndView mv){
//		String email = session.getAttribute("member").getEmail();
		String email = "test2@naver.com";
		
		//친구리스트
		List<String> fList1 = boardService.selectfList1(email); //응답자일 때
		List<String> fList2 = boardService.selectfList2(email); //요청자일 때
		if(null!=fList2){
			for(int i=0; i<fList2.size(); i++){
				fList1.add(fList2.get(i));
			}
		}
		fList1.add(email); //내 게시물도 포함하기 위함.
		
		List<BoardVo> bList = boardService.selectbList(fList1);
		
		for(int i=0; i<bList.size(); i++){
			BoardVo b = bList.get(i);
			List<String> lList = boardService.selectlList(b.getBno());
			if(null!=lList && lList.size()!=0){
				for(int j=0; j<lList.size(); j++){
					String str = lList.get(j);
					if(str.equals(email)){
						b.setLikeflag('T');
					}
				}
				
			}
		}
		
		
		for(BoardVo b:bList){
			System.out.println(b.toString());
		}
		
		
		
		mv.setViewName("main");
		
		return mv;
	}

}
