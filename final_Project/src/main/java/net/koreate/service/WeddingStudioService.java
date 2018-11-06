package net.koreate.service;

import java.util.List;

import net.koreate.vo.WeddingStudioVo;

public interface WeddingStudioService {

	List<WeddingStudioVo> SearchArea(WeddingStudioVo vo) throws Exception;

	// 2018/11/06
	WeddingStudioVo SearchAreaStudioDetail(WeddingStudioVo vo) throws Exception;

}
