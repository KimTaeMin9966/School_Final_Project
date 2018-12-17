package net.koreate.service.school;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.school.SchoolDao;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;

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

}
