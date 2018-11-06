package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.WeddingStudioDao;
import net.koreate.vo.WeddingStudioVo;

@Service
public class WeddingStudioServiceImpl implements WeddingStudioService {

	@Inject
	WeddingStudioDao dao;
	
	@Override
	public List<WeddingStudioVo> SearchArea(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchArea(vo);
	}

	@Override
	public WeddingStudioVo SearchAreaStudioDetail(WeddingStudioVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchAreaStudioDetail(vo);
	}

}
