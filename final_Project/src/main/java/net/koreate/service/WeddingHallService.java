package net.koreate.service;

import java.util.List;
import java.util.Map;

import net.koreate.vo.WeddingHallVo;
import net.koreate.vo.WeddingStudioVo;

public interface WeddingHallService {

	// 2018/10/29
	List<WeddingHallVo> SearchArea(WeddingHallVo vo) throws Exception;

	// 2018/10/30
	List<WeddingHallVo> SearchAllhall(WeddingHallVo vo) throws Exception;

	List<WeddingStudioVo> SearchAllstudio(WeddingStudioVo vo) throws Exception;

	void hallAdd(WeddingHallVo vo) throws Exception;

	void studioAdd(WeddingStudioVo vo) throws Exception;

	WeddingHallVo getHallByHNO(int hall_hno) throws Exception;

	WeddingStudioVo getStudioByHNO(int studio_hno) throws Exception;

	void hallEdit(WeddingHallVo vo) throws Exception;

	void studioEdit(WeddingStudioVo vo) throws Exception;

	void hallDeleteByHNO(Map<String, Object> paramMap) throws Exception;

	void studioDeleteByHNO(Map<String, Object> paramMap) throws Exception;
	
	// 2018/11/06
	WeddingHallVo SearchAreaHallDetail(WeddingHallVo vo) throws Exception;

	// 2018/11/07
	List<String> getAttachHallImg(Map<String, Object> paramMap) throws Exception;

	List<String> getAttachStudioImg(Map<String, Object> paramMap) throws Exception;

	// 2018/11/12
	List<String> SearchHallImg(WeddingHallVo vo) throws Exception;

}
