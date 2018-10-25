package net.koreate.dao;

import net.koreate.vo.MemberVo;

public interface MemberDao {

	MemberVo registerBefor(MemberVo vo) throws Exception;

	void register(MemberVo vo) throws Exception;

	MemberVo login(MemberVo vo) throws Exception;

}
