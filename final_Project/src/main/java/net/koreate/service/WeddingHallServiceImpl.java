package net.koreate.service;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
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
	
	@Resource(name = "uploadPath")
	String uploadPath;

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
	@Transactional
	public void hallAdd(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.hallAdd(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;
		
		System.out.println(Arrays.toString(files));
		
		for(String fullName : files) {
			Map<String, Object> filesMap = new HashMap<>();
			filesMap.put("file", fullName);
			filesMap.put("HallVo", vo);
			
			dao.addHallAttach(filesMap);
		}

		Map<String, Object> fileMap = new HashMap<>();
		fileMap.put("file", files[0]);
		fileMap.put("HallVo", vo);
		
		dao.hallAddSampleImg(fileMap);
	}

	@Override
	@Transactional
	public void studioAdd(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.studioAdd(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;
		
		for(String fullName : files) {
			Map<String, Object> filesMap = new HashMap<>();
			filesMap.put("file", fullName);
			filesMap.put("StudioVo", vo);
			
			dao.addStudioAttach(filesMap);
		}

		Map<String, Object> fileMap = new HashMap<>();
		fileMap.put("file", files[0]);
		fileMap.put("StudioVo", vo);
		
		dao.studioAddSampleImg(fileMap);
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
			Map<String, Object> filesMap = new HashMap<>();
			filesMap.put("file", fullName);
			filesMap.put("HallVo", vo);
			
			dao.editHallAttach(filesMap);
		}
		
		Map<String, Object> fileMap = new HashMap<>();
		fileMap.put("file", files[0]);
		fileMap.put("HallVo", vo);
		
		dao.editHallAttachSample(fileMap);
	}

	@Override
	@Transactional
	public void studioEdit(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		dao.studioEdit(vo);
		
		String[] files = vo.getFiles();
		
		if(files == null) return;
		
		for(String fullName : files) {
			Map<String, Object> filesMap = new HashMap<>();
			filesMap.put("file", fullName);
			filesMap.put("StudioVo", vo);
			
			dao.editStudioAttach(filesMap);
		}

		Map<String, Object> fileMap = new HashMap<>();
		fileMap.put("file", files[0]);
		fileMap.put("StudioVo", vo);

		dao.editStudioAttachSample(fileMap);
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

	@Override
	public void DeleteStudioImg(String fileName) throws Exception {
		// TODO Auto-generated method stub
		dao.DeleteStudioImgSample(fileName);
		dao.DeleteStudioImg(fileName);
	}

	@Override
	public void DeleteHallImg(String fileName) throws Exception {
		// TODO Auto-generated method stub
		dao.DeleteHallImgSample(fileName);
		dao.DeleteHallImg(fileName);
	}
	
}
