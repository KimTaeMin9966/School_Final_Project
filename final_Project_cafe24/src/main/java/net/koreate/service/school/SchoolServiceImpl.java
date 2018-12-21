package net.koreate.service.school;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.school.SchoolDao;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;
import net.koreate.vo.Vote;

@Service
public class SchoolServiceImpl implements SchoolService {
	
	@Inject
	SchoolDao dao;

	@Override
	public PageMaker getPageMaker(Criteria cri) throws Exception {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		int cnt = dao.voteCount(cri);
		pageMaker.setTotalCount(cnt);
		return pageMaker;
	}

	// 진행중인 선거 내용 불러오기 2018/12/20
	@Override
	public List<Vote> getAllVotes() throws Exception {
		// TODO Auto-generated method stub
		return dao.getAllVotes();
	}

	// 끝난 선거 내용 불러오기 2018/12/20
	@Override
	public List<Vote> getOldVotes(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.getOldVotes(cri);
	}

}
