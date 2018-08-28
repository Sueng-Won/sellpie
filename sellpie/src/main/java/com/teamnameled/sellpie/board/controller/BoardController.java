package com.teamnameled.sellpie.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.teamnameled.sellpie.board.model.service.BoardService;
import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.reply.model.service.ReplyService;
import com.teamnameled.sellpie.resource.model.service.ResourceService;
import com.teamnameled.sellpie.resource.model.vo.ResourceVo;

@Controller
public class BoardController {
   
   @Autowired
   BoardService boardService;
   
   @Autowired
   ResourceService resourceService;
   
   @Autowired
   ReplyService replyService;
   
   @RequestMapping("insertBoard.do")
   public String insertBoard(MultipartHttpServletRequest multipartHttpServletRequest, BoardVo board, HttpServletRequest request, String exceptFile){
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
   
            if(null!=files.get(i).getOriginalFilename()&&!files.get(i).getOriginalFilename().equals("")
            		&&!exceptFile.contains(files.get(i).getOriginalFilename())){
               board.setRurl(savePath);
               String fType = "";
               if(files.get(i).getContentType().contains("video")){
            	   fType = "video__";
               }
               file = new File(filePath+"\\"+uuid+fType+files.get(i).getOriginalFilename());
               ResourceVo resource = new ResourceVo();
               resource.setRsrc(savePath+"/"+uuid+fType+files.get(i).getOriginalFilename());
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
//       
//      File[] b = file.listFiles();
//
//            if(null!=b && b.length!=0){
//               board.setRurl(savePath);
//            }else{
//               file.delete();
//            }
            
      request.setAttribute("msg", errorMsg);
      
      return "redirect:searchFriendForm.do?email="+email;
   }
   
   @RequestMapping("selectBoardList.do")
   public ModelAndView selectBoardList(HttpSession session, ModelAndView mv){
      String email = ((Member)session.getAttribute("user")).getEmail();
      
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
         
         int rcount = replyService.selectRcount(b.getBno());
         bList.get(i).setRcount(rcount);
      }
      
      mv.addObject("bList", bList);
      mv.setViewName("main");
      
      return mv;
   }

   @RequestMapping("selectBoard.do")
   public @ResponseBody BoardVo selectBoard(String bno, HttpSession session){
      BoardVo b = boardService.selectBoard(bno);
      String email = ((Member)session.getAttribute("user")).getEmail();
      List<String> lList = boardService.selectlList(b.getBno());
      if(null!=lList && lList.size()!=0){
         for(int j=0; j<lList.size(); j++){
            String str = lList.get(j);
            if(str.equals(email)){
               b.setLikeflag('T');
            }
         }
      }
      int rcount = replyService.selectRcount(b.getBno());
      b.setRcount(rcount);
      
      return b;
   }

   @RequestMapping("updateLike.do")
   public @ResponseBody String subLike(String bno, String condition, HttpSession session){
      
      String mEmail = ((Member)session.getAttribute("user")).getEmail();
      
      Map<String, String> likeMap = new HashMap<String, String>();
      likeMap.put("email", mEmail);
      likeMap.put("bno", bno);
      
      int result = -1;
      int signNum = 0;
      if(condition.equals("sub")){
         result = boardService.deleteBlike(likeMap);
         signNum = -1;
      }else{
         result = boardService.insertBlike(likeMap);
         signNum = 1;
      }
       
      BoardVo board =null;
      if(0<result){
         Map<String, Integer> bmap = new HashMap<String, Integer>();
         bmap.put("bno", Integer.parseInt(bno));
         bmap.put("signNum", signNum);
         int updateResult = boardService.updateGcount(bmap);
         if(0<updateResult){
            board = boardService.selectBoard(bno);
         }else{
            System.out.println("좋아요수 업데이트 중 에러");
         }
      }else{
         System.out.println("좋아요테이블에 insert중 에러");
      }
      
      return String.valueOf(board.getGcount());
   }
   
   @RequestMapping("updateForm.do")
   public ModelAndView updateForm(String bno, ModelAndView mv){
      BoardVo board = boardService.selectBoard(bno);
      mv.addObject("board",board);
      mv.setViewName("updateBoardForm");
      return mv;
   }
   
   @RequestMapping("updateBoard.do")
   public String updateBoard(MultipartHttpServletRequest multipartHttpServletRequest, BoardVo board, String delfile, HttpServletRequest request){
	  HttpSession session = request.getSession();
      String email = ((Member)session.getAttribute("user")).getEmail();
      
      Date today = new Date();
      SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssZ");
      // 웹서버 컨테이너 경로 추출함
      String root = request.getSession().getServletContext().getRealPath("resources");
      //파일경로
      String filePath = root+"\\data\\"+email+"\\"+sdf.format(today).toString();
      String savePath = "resources/data/"+email+"/"+sdf.format(today).toString();
      //파일들을 List형식으로 보관
      List<MultipartFile> files = multipartHttpServletRequest.getFiles("file");
      
      BoardVo tempBoard = boardService.selectBoard(String.valueOf(board.getBno()));

      //update전의 폴더 경로 추출
      String folder = tempBoard.getRurl();
      if(null!=folder){
         String delfilePath = root.replace("resources", folder.replace("/", "\\"));
         //경로 파일 가져와서 안의 파일들 배열에 담음
         File temp = new File(delfilePath);
         File[] a = temp.listFiles();
         if(null!=a && a.length !=0){
	         for(int x=0; x<a.length; x++){
	            int result = resourceService.deleteResource(folder+"/"+a[x].getName());
	            if(0<result){
	               int rResult = -1;
	               if(delfile.contains(a[x].getName())){
	                  a[x].delete();
	               }else{
	                  ResourceVo resource = new ResourceVo();
	                  resource.setRsrc(savePath+"/"+a[x].getName());
	                  rResult = resourceService.insertResource(resource);
	                     
	                  if(rResult<=0){
	                     System.out.println("update에서 resource insert중 에러!");
	                  }
	               }      
	               
	            }
	         }
         }

         File renamefile = new File(filePath);
         temp.renameTo(renamefile);      
      }
      
            
      File file = new File(filePath);
      //파일이 없다면 디렉토리를 생성
      if (!file.exists()) {
          file.mkdirs();
      }
      

      int fileLength = 0;
      int resourceResult = 0;
      for (int i = 0; i < files.size(); i++) {   
         UUID uuid = UUID.randomUUID();
         if(null!=files.get(i).getOriginalFilename()&&!files.get(i).getOriginalFilename().equals("")){
        	 String fType = "";
             if(files.get(i).getContentType().contains("video")){
          	   fType = "video__";
             }
            file = new File(filePath+"\\"+uuid+fType+files.get(i).getOriginalFilename());
            ResourceVo resource = new ResourceVo();
            resource.setRsrc(savePath+"/"+uuid+fType+files.get(i).getOriginalFilename());
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
      
      File updateFile = new File(filePath);
      File[] b = updateFile.listFiles();
      if(null!=b && b.length!=0){
         board.setRurl(savePath);
      }else{
         file.delete();
      }
      
      
      
      int updateBResult = boardService.updateBoard(board);
      if(0<updateBResult){
         
      }else{
         System.out.println("board update중 에러!!");
      }
   
      return "redirect:selectBoardList.do";
   }
   
   @RequestMapping("boardDelflag.do")
   public String boardDelflag(String bno, HttpSession session){
      int result = boardService.boardDelflag(bno);
      String email = ((Member)session.getAttribute("user")).getEmail();
         if(result > 0) {
            System.out.println("boardDelflag 성공");
         }else {
            System.out.println("boardDelflag 실패");
         }
     
      return "redirect:searchFriendForm.do?email="+email;
   }
   
}