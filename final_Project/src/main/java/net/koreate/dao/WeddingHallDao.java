package net.koreate.dao;

import java.util.List;

import net.koreate.vo.MemberVo;

public interface WeddingHallDao {

	// 2018/10/29 ������ Ȧ�� �����˻� �޼ҵ� ����(�ӽ�)
	List<MemberVo> SearchArea1(MemberVo vo) throws Exception;

}
