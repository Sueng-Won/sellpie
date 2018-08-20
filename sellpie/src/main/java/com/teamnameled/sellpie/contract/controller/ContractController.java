package com.teamnameled.sellpie.contract.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
		System.out.println(contract);
		int result = contractService.insertContract(contract);
		if(result>0) {
			System.out.println("insert 성공");
		}else {
			System.out.println("insert 실패");
		}
		return "redirect: productList.do?sNo="+contract.getsNo();
	}
	@RequestMapping(value="updateinvNum.do")
	public @ResponseBody int updateinvNum(Contract contract) {
		System.out.println(contract);
		int result = contractService.updateContract(contract);
		if(result>0) {
			System.out.println("update 성공");
		}else {
			System.out.println("update 실패");
		}
		return result;
	}
}
