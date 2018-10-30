package net.koreate.service;

import java.util.List;

import net.koreate.vo.WeddingHallVo;

public interface WeddingHallService {

	// 2018/10/29
	List<WeddingHallVo> SearchArea(WeddingHallVo vo) throws Exception;

}
