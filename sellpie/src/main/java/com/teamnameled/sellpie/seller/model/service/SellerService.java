package com.teamnameled.sellpie.seller.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.seller.model.dao.SellerDao;
import com.teamnameled.sellpie.seller.model.vo.SalesStatisticsVo;
import com.teamnameled.sellpie.seller.model.vo.Seller;

@Service
public class SellerService {
	@Autowired
	SellerDao sellerDao;
	public List<Member> selectSellerList(String selTag) {
		return sellerDao.selectSellerList(selTag);
	}
	public List<Seller> selectSellersInfo(List<Member> sellerList) {
		return sellerDao.selectSellersInfo(sellerList);
	}
	public Seller selectSeller(String email) {
		return sellerDao.selectSeller(email);
	}
	public List<SalesStatisticsVo> selectSalesStatisticsList(String email) {
		return sellerDao.selectSalesStatisticsList(email);
	}
	public List<Seller> selectApprovalList() {
		//승인 대기중인 셀러를 조회하는 로직
		return sellerDao.selectApprovalList();
	}
	public int updateSellerAu(Seller seller) {
		// 판매자 승인
		return sellerDao.updateSellerAu(seller);
	}
	
}
