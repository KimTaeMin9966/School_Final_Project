package net.koreate.service;

import java.util.List;

import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

public interface MemberService {

	String register(MemberVo vo) throws Exception;

	String login(MemberVo vo) throws Exception;

	MemberVo getUserByUNO(String mwid) throws Exception;

	MemberVo signIn(LoginDto dto) throws Exception;

	MemberVo getUserByID(String uid) throws Exception;

	// 2018/10/26
	MemberVo loginDto(LoginDto dto) throws Exception;

	MemberVo memberSearch(LoginDto dto) throws Exception;

	// 2018/10/30
	void editInfo(MemberVo vo) throws Exception;

	MemberVo getUserByVO(MemberVo vo) throws Exception;

	List<MemberVo> memberAllSearch() throws Exception;

	void infoDeleteByID(String mwid) throws Exception;

	void infoUpdateByVO(MemberVo vo) throws Exception;
	
}
