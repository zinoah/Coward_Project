package kr.co.coward.contest.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.coward.contest.model.dao.ContestDAO;
import kr.co.coward.contest.model.vo.Contest;

@Service
public class ContestServiceImpl implements ContestService {
	
	@Autowired
	private ContestDAO dao;

	// 공모전 10개 리스트 조회 서비스
	// default, new, popular
	@Override
	public List<Contest> getContestList(String type) {
		return dao.getContestList(type);
	}
	
}
