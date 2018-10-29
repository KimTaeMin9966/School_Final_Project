package net.koreate.dao;

import java.util.List;

import net.koreate.vo.MemberVo;

public interface WeddingHallDao {

	// 2018/10/29 지역별 홀의 정보검색 메소드 생성(임시)
	List<MemberVo> SearchArea1(MemberVo vo) throws Exception;

}
