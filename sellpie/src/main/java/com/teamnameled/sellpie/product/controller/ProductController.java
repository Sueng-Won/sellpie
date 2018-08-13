package com.teamnameled.sellpie.product.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.teamnameled.sellpie.board.model.vo.BoardVo;
import com.teamnameled.sellpie.product.model.service.ProductService;
import com.teamnameled.sellpie.product.model.vo.Product;
<<<<<<< HEAD
import com.teamnameled.sellpie.resource.model.service.ResourceService;
import com.teamnameled.sellpie.resource.model.vo.ResourceVo;
=======
import com.teamnameled.sellpie.review.controller.ReviewController;
import com.teamnameled.sellpie.review.model.vo.Review;
>>>>>>> refs/heads/master

@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
<<<<<<< HEAD
	ResourceService resourceService;
=======
	ReviewController reviewController;
>>>>>>> refs/heads/master
	
	@RequestMapping("productList.do")
	public String selectProductList(int sNo,HttpServletRequest request) {
		List<Product> productList = productService.selectProductList(sNo);
		List<Review> reviewList = reviewController.selectReviewList(productList);
		double starAvg = 0;
		int flooredStarAvg = 0;
		int reviewerCount = reviewList.size();
		for(int i = 0; i<reviewList.size(); i++) {
			starAvg += reviewList.get(i).getReviewStar();
		}
		starAvg /= reviewList.size();
		flooredStarAvg = (int)Math.round(starAvg);
		request.setAttribute("productList", productList);
		request.setAttribute("star", flooredStarAvg);
		request.setAttribute("count", reviewerCount);
		return "product/productList";
<<<<<<< HEAD
	}
	
	@RequestMapping("productForm.do")
	public String productForm() {
		
		return "product/productForm";
=======
>>>>>>> refs/heads/master
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
	
}
