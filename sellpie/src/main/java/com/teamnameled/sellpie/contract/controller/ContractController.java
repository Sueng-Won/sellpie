package com.teamnameled.sellpie.contract.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.teamnameled.sellpie.contract.model.service.ContractService;

@Controller
public class ContractController {
	@Autowired
	ContractService contractService;
}
