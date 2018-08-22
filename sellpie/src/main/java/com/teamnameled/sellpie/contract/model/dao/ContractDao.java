package com.teamnameled.sellpie.contract.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teamnameled.sellpie.contract.model.vo.Contract;
import com.teamnameled.sellpie.contract.model.vo.ContractWithName;
import com.teamnameled.sellpie.contract.model.vo.SalesListVo;

@Repository
public class ContractDao {
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<Contract> selectContractList(String email) {
		return sqlSession.selectList("ContractMapper.selectContractList", email);
	}

	public int insertContract(Contract contract) {
		return sqlSession.insert("ContractMapper.insertContract", contract);
	}

	public int updateContract(Contract contract) {
		return sqlSession.update("ContractMapper.updateContract", contract);
	}
	
	public List<ContractWithName> selectContractListWithName(List<Contract> purchaseList) {
		return sqlSession.selectList("ContractMapper.selectContractListWithName",purchaseList);
	}

	public List<SalesListVo> selectSalesList(SalesListVo salesListVo) {
		return sqlSession.selectList("ContractMapper.selectSalesList", salesListVo);
	}
}
