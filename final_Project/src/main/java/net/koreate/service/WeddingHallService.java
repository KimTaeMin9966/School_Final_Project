package net.koreate.service;

import java.util.List;

import net.koreate.vo.MemberVo;

public interface WeddingHallService {

	// 2018/10/29 ������ Ȧ�� �����˻� �޼ҵ� ����(�ӽ�)
	List<MemberVo> SearchArea1(MemberVo vo) throws Exception;

}
