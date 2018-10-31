package net.koreate.dao;

import java.util.List;

import net.koreate.vo.WeddingStudioVo;

public interface WeddingStudioDao {
	
	List<WeddingStudioVo> SearchArea(WeddingStudioVo vo) throws Exception;
	
}
