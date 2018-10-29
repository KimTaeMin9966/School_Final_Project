package net.koreate.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.WeddingHallDao;
import net.koreate.vo.MemberVo;

@Service
public class WeddingHallServiceImpl implements WeddingHallService {
	
	@Inject
	WeddingHallDao dao;

	@Override
	public List<MemberVo> SearchArea1(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.SearchArea1(vo);
	}
	
}
