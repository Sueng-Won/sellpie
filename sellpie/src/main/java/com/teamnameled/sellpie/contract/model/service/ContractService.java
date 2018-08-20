package com.teamnameled.sellpie.contract.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.contract.model.dao.ContractDao;
import com.teamnameled.sellpie.contract.model.vo.Contract;
import com.teamnameled.sellpie.contract.model.vo.ContractWithName;
import com.teamnameled.sellpie.contract.model.vo.SalesListVo;

@Service
public class ContractService {
	@Autowired
	ContractDao contractDao;

	public List<Contract> selectContractList(String email) {
		return contractDao.selectContractList(email);
	}

	public int insertContract(Contract contract) {
		return contractDao.insertContract(contract);
	}

	public int updateContract(Contract contract) {
		return contractDao.updateContract(contract);
	}
	public List<ContractWithName> selectContractListWithName(List<Contract> purchaseList) {
		return contractDao.selectContractListWithName(purchaseList);
	}

	public List<SalesListVo> selectSalesList(SalesListVo salesListVo) {
		return contractDao.selectSalesList(salesListVo);
	}
}
