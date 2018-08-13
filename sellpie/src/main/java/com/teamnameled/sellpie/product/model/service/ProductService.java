package com.teamnameled.sellpie.product.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.product.model.dao.ProductDao;
import com.teamnameled.sellpie.product.model.vo.Product;

@Service
public class ProductService {
	@Autowired
	ProductDao productDao;
	public List<Product> selectProductList(int sNo) {
		return productDao.selectProductList(sNo);
	}
	public Product selectProduct(int pNo) {
		// TODO Auto-generated method stub
		return productDao.selectProduct(pNo);
	}

}
