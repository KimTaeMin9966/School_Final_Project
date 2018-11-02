package net.koreate.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.CheckListDao;
import net.koreate.vo.ListVo;
import net.koreate.vo.MemberVo;

@Service
public class CheckListServiceImpl implements CheckListService {

	@Inject
	CheckListDao dao;
	
	@Override
	public Object STEP1Search(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.STEP1Search(vo);
	}

	@Override
	public Object STEP2Search(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.STEP2Search(vo);
	}

	@Override
	public Object STEP3Search(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.STEP3Search(vo);
	}

	@Override
	public Object STEP4Search(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.STEP4Search(vo);
	}

	@Override
	public void STEP1Save(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP1Save(vo);
	}

	@Override
	public void STEP2Save(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP2Save(vo);
	}

	@Override
	public void STEP3Save(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP3Save(vo);
	}

	@Override
	public void STEP4Save(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP4Save(vo);
	}

	@Override
	public void STEP1Edit(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP1Edit(vo);
	}

	@Override
	public void STEP2Edit(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP2Edit(vo);
	}

	@Override
	public void STEP3Edit(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP3Edit(vo);
	}

	@Override
	public void STEP4Edit(ListVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.STEP4Edit(vo);
	}

}
