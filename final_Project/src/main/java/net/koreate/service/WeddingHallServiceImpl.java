package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.WeddingHallDao;
import net.koreate.vo.WeddingHallVo;
import net.koreate.vo.WeddingStudioVo;

@Service
public class WeddingHallServiceImpl implements WeddingHallService {
	
	@Inject
	WeddingHallDao dao;

	@Override
	public List<WeddingHallVo> SearchArea(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchArea(vo);
	}

	@Override
	public List<WeddingHallVo> SearchAllhall(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchAllhall(vo);
	}

	@Override
	public List<WeddingStudioVo> SearchAllstudio(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchAllstudio(vo);
	}

	@Override
	public void hallAdd(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.hallAdd(vo);
	}

	@Override
	public void studioAdd(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.studioAdd(vo);
	}

	@Override
	public WeddingHallVo getHallByHNO(int hall_hno) throws Exception {
		// TODO Auto-generated method stub
		return dao.getHallByHNO(hall_hno);
	}

	@Override
	public WeddingStudioVo getStudioByHNO(int studio_hno) throws Exception {
		// TODO Auto-generated method stub
		return dao.getStudioByHNO(studio_hno);
	}

	@Override
	public void hallEdit(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.hallEdit(vo);
	}

	@Override
	public void studioEdit(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.studioEdit(vo);
	}

	@Override
	public void hallDeleteByHNO(int hall_hno) throws Exception {
		// TODO Auto-generated method stub
		dao.hallDeleteByHNO(hall_hno);
	}

	@Override
	public void studioDeleteByHNO(int studio_hno) throws Exception {
		// TODO Auto-generated method stub
		dao.studioDeleteByHNO(studio_hno);
	}
	
}
