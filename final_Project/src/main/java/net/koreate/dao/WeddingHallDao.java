package net.koreate.dao;

import java.util.List;
import java.util.Map;

import net.koreate.vo.WeddingHallVo;
import net.koreate.vo.WeddingStudioVo;

public interface WeddingHallDao {

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

	void addHallAttach(Map<String, Object> paramMap) throws Exception;

	void addStudioAttach(Map<String, Object> paramMap) throws Exception;

	// 2018/11/12
	void hallDeleteImgByHNO(Map<String, Object> paramMap) throws Exception;

	void studioDeleteImgByHNO(Map<String, Object> paramMap) throws Exception;

	List<String> SearchHallImg(WeddingHallVo vo) throws Exception;

	void hallAddSampleImg(Map<String, Object> paramMap) throws Exception;

	void studioAddSampleImg(Map<String, Object> paramMap) throws Exception;

}
