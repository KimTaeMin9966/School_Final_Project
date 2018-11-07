package net.koreate.dao;

import java.util.List;

import net.koreate.vo.WeddingStudioVo;

public interface WeddingStudioDao {
	
	List<WeddingStudioVo> SearchArea(WeddingStudioVo vo) throws Exception;

	// 2018/11/06
	WeddingStudioVo SearchAreaStudioDetail(WeddingStudioVo vo) throws Exception;
	
}
