package net.koreate.service;

import java.util.List;

import net.koreate.vo.WeddingHallVo;
import net.koreate.vo.WeddingStudioVo;

public interface WeddingHallService {

	// 2018/10/29
	List<WeddingHallVo> SearchArea(WeddingHallVo vo) throws Exception;

	// 2018/10/30
	List<WeddingHallVo> SearchAllhall(WeddingHallVo vo) throws Exception;

	List<WeddingStudioVo> SearchAllstudio(WeddingStudioVo vo) throws Exception;

}
