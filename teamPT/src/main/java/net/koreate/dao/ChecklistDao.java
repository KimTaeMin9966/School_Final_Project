package net.koreate.dao;

import java.util.List;

import net.koreate.vo.ChecklistVo;
import net.koreate.vo.MemberVo;

public interface ChecklistDao {
	
	void checklistVo(ChecklistVo vo) throws Exception;

	ChecklistVo getChecklist(MemberVo mv) throws Exception;
	
	void updateChecklist(ChecklistVo vo) throws Exception;

}
