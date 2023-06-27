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

	// 진행중인 공모전 10개 리스트 조회 서비스
	@Override
	public List<Contest> getContestList() {
		return dao.getContestList();
	}

	//최신 등록된 공모전 10개 리스트 조회 서비스
	@Override
	public List<Contest> getNewContestList() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
