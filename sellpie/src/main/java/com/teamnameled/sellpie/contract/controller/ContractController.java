package com.teamnameled.sellpie.contract.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.teamnameled.sellpie.contract.model.service.ContractService;
import com.teamnameled.sellpie.contract.model.vo.Contract;

@Controller
public class ContractController {
	@Autowired
	ContractService contractService;
	public List<Contract> contractList(String email) {
		List<Contract> contract = contractService.selectContractList(email);
		return contract;
	}
	@RequestMapping("insertContract.do")
	public String insertContract(Contract contract) {
		int result = contractService.insertContract(contract);
		if(result>0) {
			System.out.println("insert 성공");
		}else {
			System.out.println("insert 실패");
		}
		return "main";
	}
}
