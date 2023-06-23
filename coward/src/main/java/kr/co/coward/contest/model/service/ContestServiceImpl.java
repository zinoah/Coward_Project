package kr.co.coward.contest.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.contest.model.dao.ContestDAO;

@Service
public class ContestServiceImpl implements ContestService {

	@Autowired
	private ContestDAO dao;
}
