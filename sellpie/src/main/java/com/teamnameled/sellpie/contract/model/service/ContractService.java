package com.teamnameled.sellpie.contract.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamnameled.sellpie.contract.model.dao.ContractDao;

@Service
public class ContractService {
	@Autowired
	ContractDao contractDao;
}
