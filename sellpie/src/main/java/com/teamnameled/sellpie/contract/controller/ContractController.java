package com.teamnameled.sellpie.contract.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

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
}
