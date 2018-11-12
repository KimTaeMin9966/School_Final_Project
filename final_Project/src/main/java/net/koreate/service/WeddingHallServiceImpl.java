package net.koreate.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
		WeddingHallVo list = dao.SearchArea(vo);
		return null;
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
	@Transactional
	public void hallAdd(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.hallAdd(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;

		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("file", files[0]);
		paramMap.put("HallVo", vo);
		
		dao.hallAddSampleImg(paramMap);
		
		for(String fullName : files) {
			Map<String, Object> paramMap2 = new HashMap<>();
			paramMap2.put("file", fullName);
			paramMap2.put("HallVo", vo);
			
			dao.addHallAttach(paramMap2);
		}
	}

	@Override
	@Transactional
	public void studioAdd(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.studioAdd(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;

		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("file", files[0]);
		paramMap.put("StudioVo", vo);

		dao.studioAddSampleImg(paramMap);
		
		for(String fullName : files) {
			Map<String, Object> paramMap2 = new HashMap<>();
			paramMap2.put("file", fullName);
			paramMap2.put("StudioVo", vo);
			
			dao.addStudioAttach(paramMap2);
		}
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
	@Transactional
	public void hallEdit(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.hallEdit(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;
		
		for(String fullName : files) {
			Map<String, Object> paramMap = new HashMap<>();
			paramMap.put("file", fullName);
			paramMap.put("HallVo", vo);
			
			dao.addHallAttach(paramMap);
		}
	}

	@Override
	@Transactional
	public void studioEdit(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.studioEdit(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;
		
		for(String fullName : files) {
			Map<String, Object> paramMap = new HashMap<>();
			paramMap.put("file", fullName);
			paramMap.put("StudioVo", vo);
			
			dao.addStudioAttach(paramMap);
		}
	}

	@Override
	public void hallDeleteByHNO(Map<String, Object> paramMap) throws Exception {
		// TODO Auto-generated method stub
		dao.hallDeleteImgByHNO(paramMap);
		dao.hallDeleteByHNO(paramMap);
	}

	@Override
	public void studioDeleteByHNO(Map<String, Object> paramMap) throws Exception {
		// TODO Auto-generated method stub
		dao.studioDeleteImgByHNO(paramMap);
		dao.studioDeleteByHNO(paramMap);
	}
	
	@Override
	public WeddingHallVo SearchAreaHallDetail(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchAreaHallDetail(vo);
	}

	@Override
	public List<String> getAttachHallImg(Map<String, Object> paramMap) throws Exception {
		// TODO Auto-generated method stub
		return dao.getAttachHallImg(paramMap);
	}

	@Override
	public List<String> getAttachStudioImg(Map<String, Object> paramMap) throws Exception {
		// TODO Auto-generated method stub
		return dao.getAttachStudioImg(paramMap);
	}

	@Override
	public List<String> SearchHallImg(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchHallImg(vo);
	}
	
}
