package net.koreate.dao;

import java.util.List;

import net.koreate.vo.WeddingHallVo;

public interface WeddingHallDao {

	// 2018/10/29
	List<WeddingHallVo> SearchArea(WeddingHallVo vo) throws Exception;

}
