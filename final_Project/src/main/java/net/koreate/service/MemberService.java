package net.koreate.service;

import net.koreate.vo.MemberVo;

public interface MemberService {

	String register(MemberVo vo) throws Exception;

	String login(MemberVo vo) throws Exception;
	
}
