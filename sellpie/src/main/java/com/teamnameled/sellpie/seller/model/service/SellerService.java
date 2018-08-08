package com.teamnameled.sellpie.seller.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.member.model.vo.Member;
import com.teamnameled.sellpie.seller.model.dao.SellerDao;
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
	
}
