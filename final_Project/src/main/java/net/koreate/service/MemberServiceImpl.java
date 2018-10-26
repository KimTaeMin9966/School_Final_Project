package net.koreate.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import net.koreate.dao.MemberDao;
import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDao dao;

	@Override
	public String register(MemberVo vo) throws Exception {
		String result = "FAIL";
		
		MemberVo voBefor = dao.registerBefor(vo);
		
		if(voBefor == null || (!voBefor.getMwid().equals(vo.getMwid()))) { dao.register(vo); result = "SUCCESS"; }
		
		return result;
	}

	@Override
	public String login(MemberVo vo) throws Exception {
		String result = "FAIL";
		
		MemberVo voBefor = dao.login(vo);
		
		if(voBefor != null) { result = "SUCCESS"; }
		
		return result;
	}

	@Override
	public MemberVo getUserByUNO(String mwid) throws Exception {
		return dao.getUserByUNO(mwid);
	}

	@Override
	public MemberVo signIn(LoginDto dto) throws Exception {
		return dao.signIn(dto);
	}

	@Override
	public MemberVo getUserByID(String uid) throws Exception {
		return dao.getUserByID(uid);
	}
	
}
