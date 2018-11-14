package net.koreate.dao;

import java.util.List;
import java.util.Map;

import net.koreate.vo.ListVo;
import net.koreate.vo.MemberVo;
import net.koreate.vo.WeddingHallVo;

public interface CheckListDao {

	Object STEP1Search(MemberVo vo) throws Exception;
	
	Object STEP2Search(MemberVo vo) throws Exception;
	
	Object STEP3Search(MemberVo vo) throws Exception;
	
	Object STEP4Search(MemberVo vo) throws Exception;

	void STEP1Save(ListVo vo) throws Exception;
	
	void STEP2Save(ListVo vo) throws Exception;
	
	void STEP3Save(ListVo vo) throws Exception;
	
	void STEP4Save(ListVo vo) throws Exception;

	void STEP1Edit(ListVo vo) throws Exception;
	
	void STEP2Edit(ListVo vo) throws Exception;
	
	void STEP3Edit(ListVo vo) throws Exception;
	
	void STEP4Edit(ListVo vo) throws Exception;

	// 2018/11/14
	List<WeddingHallVo> SearchMoneyHall(Map<String, Integer> paramMap) throws Exception;

}
