package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.WeddingHallDao;
import net.koreate.vo.WeddingHallVo;

@Service
public class WeddingHallServiceImpl implements WeddingHallService {
	
	@Inject
	WeddingHallDao dao;

	@Override
	public List<WeddingHallVo> SearchArea(WeddingHallVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchArea(vo);
	}
	
}
