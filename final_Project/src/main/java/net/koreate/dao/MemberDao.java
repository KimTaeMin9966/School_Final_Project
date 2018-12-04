package net.koreate.dao;

import java.util.List;

import net.koreate.dto.LoginDto;
import net.koreate.vo.MemberVo;

public interface MemberDao {

	MemberVo registerBefor(MemberVo vo) throws Exception;

	void register(MemberVo vo) throws Exception;

	MemberVo login(MemberVo vo) throws Exception;

	MemberVo getUserByUNO(String mwid) throws Exception;

	MemberVo signIn(LoginDto dto) throws Exception;

	MemberVo getUserByID(String mwid) throws Exception;

	// 2018/10/26
	MemberVo loginDto(LoginDto dto) throws Exception;

	MemberVo memberSearch(LoginDto dto) throws Exception;

	// 2018/10/30
	void editInfo(MemberVo vo) throws Exception;

	MemberVo getUserByVO(MemberVo vo) throws Exception;

	List<MemberVo> memberAllSearch() throws Exception;

	void infoDeleteByID(String mwid) throws Exception;

	void infoUpdateByVO(MemberVo vo) throws Exception;

	// 2018/11/01
	MemberVo searchByNO(int mwno) throws Exception;

	// 2018/11/02
	int isMasterSearch() throws Exception;

	// 2018/11/06
	List<MemberVo> searchID() throws Exception;

	// 2018/12/02
	void deleteInfo(MemberVo obj) throws Exception;

	// 2018/12/05
	void updateRegister(MemberVo vo) throws Exception;

	/*Object getMember(MemberVo mvo) throws Exception;*/

}
