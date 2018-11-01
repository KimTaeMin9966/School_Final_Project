package net.koreate.service;

import java.util.List;

import net.koreate.vo.ChecklistVo;
import net.koreate.vo.MemberVo;

public interface ChecklistService {
	
	List<ChecklistVo> checklistregister(ChecklistVo checklistVo) throws Exception;

	ChecklistVo getchecklist(MemberVo mv)throws Exception;

	
	ChecklistVo getCheckList(MemberVo mv) throws Exception;
	


}
