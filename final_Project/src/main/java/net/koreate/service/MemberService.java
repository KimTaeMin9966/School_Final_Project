package net.koreate.service;

import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

public interface MemberService {

	String register(MemberVo vo) throws Exception;

	String login(MemberVo vo) throws Exception;

	MemberVo getUserByUNO(String mwid) throws Exception;

	MemberVo signIn(LoginDto dto) throws Exception;

	MemberVo getUserByID(String uid) throws Exception;
	
}
