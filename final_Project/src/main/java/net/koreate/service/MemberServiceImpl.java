package net.koreate.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.MemberDao;
import net.koreate.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDao dao;

	@Override
	public String register(MemberVo vo) throws Exception {
		String result = "FAIL";
		
		MemberVo voBefor = dao.registerBefor(vo);
		
		if(voBefor == null || (voBefor.getMwid() != vo.getMwid())) { dao.register(vo); result = "SUCCESS"; }
		
		return result;
	}

	@Override
	public String login(MemberVo vo) throws Exception {
		String result = "FAIL";
		
		MemberVo voBefor = dao.login(vo);
		
		if(voBefor != null) { result = "SUCCESS"; }
		
		return result;
	}
	
}
