package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.ChecklistDao;
import net.koreate.vo.ChecklistVo;
import net.koreate.vo.MemberVo;

/*service를 사용하기 위해 @service해줌*/
@Service
public class ChecklistServiceImpl implements ChecklistService {
	
	/*ChecklistDao사용하기 위해 @Inject 주입*/
	@Inject
	ChecklistDao checklistdao;
	
	@Override
	public List<ChecklistVo> checklistregister(ChecklistVo checklistVo) throws Exception {
		
		/*위에 @Inject ChecklistDao checklistdao로 변수명 설정한 것 
		ChecklistDao로 가면 ChecklistVo타입을 vo변수명으로 지정해줬음*/
		checklistdao.checklistVo(checklistVo);
	
		
		return null;
	}

	@Override
	public ChecklistVo getchecklist(MemberVo mv) throws Exception {
		
		return checklistdao.getChecklist(mv);
	}

	@Override
	public ChecklistVo getCheckList(MemberVo mv) throws Exception {
		// TODO Auto-generated method stub
		return checklistdao.getChecklist(mv);
	}
	


}
