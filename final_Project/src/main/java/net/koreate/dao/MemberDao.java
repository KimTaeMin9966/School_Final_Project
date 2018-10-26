package net.koreate.dao;

import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

public interface MemberDao {

	MemberVo registerBefor(MemberVo vo) throws Exception;

	void register(MemberVo vo) throws Exception;

	MemberVo login(MemberVo vo) throws Exception;

	MemberVo getUserByUNO(String mwid) throws Exception;

	MemberVo signIn(LoginDto dto) throws Exception;

	MemberVo getUserByID(String uid) throws Exception;

}
