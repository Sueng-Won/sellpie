package com.teamnameled.sellpie.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.product.model.service.ProductService;
import com.teamnameled.sellpie.product.model.vo.Product;
import com.teamnameled.sellpie.resource.model.service.ResourceService;
import com.teamnameled.sellpie.resource.model.vo.ResourceVo;
import com.teamnameled.sellpie.review.controller.ReviewController;
import com.teamnameled.sellpie.review.model.vo.Review;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	ResourceService resourceService;
	@Autowired
	ReviewController reviewController;
	
	@RequestMapping("productList.do")
	public String selectProductList(int sNo,HttpServletRequest request) {
		List<Product> productList = productService.selectProductList(sNo);
		System.out.println(productList.toString());
		List<Review> reviewList = reviewController.selectReviewList(productList);
		double[] starAvg = new double[productList.size()];
		int[] flooredStarAvg = new int[productList.size()];
		int[] reviewerCount = new int[productList.size()];
		for(int i=0;i<productList.size();i++) {
			for(int j = 0; j<reviewList.size(); j++) {
				if(productList.get(i).getpNo() == reviewList.get(j).getpNo()) {
					starAvg[i] += reviewList.get(j).getReviewStar();
					reviewerCount[i] += 1;
				}
			}
		}
		
		for(int i=0; i<starAvg.length;i++) {
			starAvg[i] /= reviewerCount[i];
			flooredStarAvg[i] = (int)Math.round(starAvg[i]);
		}
		request.setAttribute("productList", productList);
		request.setAttribute("starList", flooredStarAvg);
		request.setAttribute("countList", reviewerCount);
		return "product/productList";
	}
	
	@RequestMapping("productForm.do")
	public String productForm() {
		
		return "product/productForm";
	}
	
	@RequestMapping(value = "productApply.do", method=RequestMethod.POST)
	public String productApply(MultipartHttpServletRequest multipartHttpServletRequest, String email,
			Product product, HttpServletRequest request) {
		
		int productResult = -1;
		int resourceResult = 0;
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssZ");
		String bcontent = product.getpDetail();
		if(product.getIsCraft() != 'Y'){
			product.setIsCraft('N');
		}
		
		// 웹서버 컨테이너 경로 추출함
		String root = request.getSession().getServletContext().getRealPath("resources");
		//파일경로
		String filePath = root+"\\product\\"+email+"\\"+sdf.format(today).toString();
		String savePath = "resources/product/"+email+"/"+sdf.format(today).toString();
		//파일들을 List형식으로 보관
		List<MultipartFile> files = multipartHttpServletRequest.getFiles("file");
		
		File file = new File(filePath);
		//파일이 없다면 디렉토리를 생성
		if (!file.exists()) {
		    file.mkdirs();
		}
		
		//insert form 넘어올 때 멤버 이메일,게시물 내용은 입력받은 내용 들어있음.
		
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
					product.setrUrl(savePath);
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
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					} 
				}
			}
			
			
			if(resourceResult==fileLength){
				
				productResult = productService.insertProduct(product);
				System.out.println(product+"/"+email);
				if(0<productResult){
				}else{
					errorMsg="insertProduct에서 에러 발생!!";//에러페이지 만들면 대체
				}
			}else{
				errorMsg="db에 file insert중 에러";
			}
		}
	
		request.setAttribute("msg", errorMsg);
		
		System.out.println(product.toString());
		
		
		
		return "redirect:main.do";
	}
	
	
	@RequestMapping("productUpdateForm.do")
	public ModelAndView productUpdateForm(int pNo, ModelAndView mv){
		Product product = productService.selectProduct(pNo);
		mv.addObject("product", product);
		mv.setViewName("product/productUpdateForm");
		return mv;
	}
	
	
	@RequestMapping(value = "productUpdate.do", method=RequestMethod.POST)
	public String productUpdate(MultipartHttpServletRequest multipartHttpServletRequest, String email,
			Product product, HttpServletRequest request) {
		
		int productResult = -1;
		int resourceResult = 0;
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssZ");
		String bcontent = product.getpDetail();
		if(product.getIsCraft() != 'Y'){
			product.setIsCraft('N');
		}
		String errorMsg = "";
		System.out.println(multipartHttpServletRequest.getFile("file").isEmpty());
		if(!multipartHttpServletRequest.getFile("file").isEmpty()){
			
			// 웹서버 컨테이너 경로 추출함
			String root = request.getSession().getServletContext().getRealPath("resources");
			//파일경로
			String oldFilePath = root+"\\product\\"+email+"\\"+product.getrUrl();
			String newFilePath = root+"\\product\\"+email+"\\"+sdf.format(today).toString();
			String savePath = "resources/product/"+email+"/"+sdf.format(today).toString();
			//파일들을 List형식으로 보관
			List<MultipartFile> files = multipartHttpServletRequest.getFiles("file");
			//이전 파일 삭제
			File oldFile = new File(oldFilePath);
			if(oldFile.exists()){
				oldFile.delete();
			}
			int deleteResource = resourceService.deleteResource(oldFilePath);
			if(deleteResource > 0){
				System.out.println("resource삭제 성공적");
			}
			File newFile = new File(newFilePath);
			//파일이 없다면 디렉토리를 생성
			if (!newFile.exists()) {
			    newFile.mkdirs();
			}
			
			//insert form 넘어올 때 멤버 이메일,게시물 내용은 입력받은 내용 들어있음.
			
			
			if(email==null||email.length()==0||email.equals("")){
				errorMsg = "로그인이 필요한 기능입니다.";
			}else if(bcontent==null||bcontent.length()==0||bcontent.trim().equals("")){
				errorMsg = "내용을 입력해주세요.";
			}else{
				int fileLength = 0;
				for (int i = 0; i < files.size(); i++) {
						
					UUID uuid = UUID.randomUUID();
		
					if(null!=files.get(i).getOriginalFilename()&&!files.get(i).getOriginalFilename().equals("")){
						product.setrUrl(savePath);
						newFile = new File(newFilePath+"\\"+uuid+files.get(i).getOriginalFilename());
						ResourceVo resource = new ResourceVo();
						resource.setRsrc(savePath+"/"+uuid+files.get(i).getOriginalFilename());
						resourceResult += resourceService.insertResource(resource);
						if(fileLength<resourceResult){
							fileLength++;
						}
						try {
							files.get(i).transferTo(newFile);
						} catch (IllegalStateException e) {
							e.printStackTrace();
						} catch (IOException e) {
							e.printStackTrace();
						} 
					}
				}
				
				
				if(resourceResult==fileLength){
					System.out.println("사진 업로드시 =>"+product.toString());
					productResult = productService.updateProduct(product);
					System.out.println(product+"/"+email);
					if(0<productResult){
					}else{
						errorMsg="updateProduct에서 에러 발생!!";//에러페이지 만들면 대체
					}
				}else{
					errorMsg="db에 file update중 에러";
				}
			}
		
			request.setAttribute("msg", errorMsg);
		}else{
			System.out.println("사진 미 업로드시 =>"+product.toString());
			productResult = productService.updateProduct(product);
			if(0<productResult){
			}else{
				errorMsg="updateProduct에서 에러 발생!!";//에러페이지 만들면 대체
			}
		}
	
		
		System.out.println(product.toString());
		return "redirect:main.do";
	}
}
