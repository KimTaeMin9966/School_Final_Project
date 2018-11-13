package net.koreate.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import net.koreate.service.MemberService;
import net.koreate.service.WeddingHallService;
import net.koreate.util.MediaUtils;
import net.koreate.util.UploadFileUtils;
import net.koreate.vo.MemberVo;
import net.koreate.vo.WeddingHallVo;
import net.koreate.vo.WeddingStudioVo;

@Controller
@RequestMapping("/management/*")
public class ManagementController {
	private static final Logger logger = LoggerFactory.getLogger(ManagementController.class);

	@Inject
	MemberService mService;
	
	@Inject
	WeddingHallService hService;
	
	@Resource(name = "uploadPath")
	String uploadPath;
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public void GET() throws Exception {
		logger.info("GET Called!!!");
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public void POST() throws Exception {
		logger.info("POST Called!!!");
	}

	@RequestMapping(value = "/")
	public void GET_POST() throws Exception {
		logger.info("GET & POST Called!!!");
	}*/
	
	// 맴버 관리
	@RequestMapping(value = "/infoView", method = RequestMethod.POST)
	public void infoViewPOST(@RequestParam("mwid") String mwid, Model model) throws Exception {
		logger.info("infoViewPOST Called!!!");
		MemberVo vo = mService.getUserByID(mwid);
		model.addAttribute("memberInfo", vo);
	}
	
	@RequestMapping(value = "/infoEdit", method = RequestMethod.POST)
	public void infoEditPOST(@RequestParam("mwid") String mwid, Model model) throws Exception {
		logger.info("infoEditPOST Called!!!");
		MemberVo vo = mService.getUserByID(mwid);
		model.addAttribute("memberInfo", vo);
	}

	@ResponseBody
	@RequestMapping(value = "/infoEdit", method = RequestMethod.PATCH)
	public String infoEditPATCH(@RequestBody MemberVo vo) throws Exception {
		logger.info("infoEditPATCH Called!!!");
		mService.infoUpdateByVO(vo);
		return "SUCCESS";
	}
	
	@RequestMapping(value = "/infoDelete", method = RequestMethod.POST)
	public String infoDeletePOST(@RequestParam("mwid") String mwid) throws Exception {
		logger.info("infoDeletePOST Called!!!");
		mService.infoDeleteByID(mwid);
		return "redirect:/management/member";
	}

	@RequestMapping(value = "/member", method = RequestMethod.GET)
	public void memberGET(Model model) throws Exception {
		logger.info("memberGET Called!!!");
		
		List<MemberVo> list = mService.memberAllSearch();
		model.addAttribute("memberInfos", list);
	}
	
	// 목록 보기
	@RequestMapping(value = "/hall", method = RequestMethod.GET)
	public void hallGET(WeddingHallVo vo, Model model) throws Exception {
		logger.info("hallGET Called!!!");
		List<WeddingHallVo> list = hService.SearchAllhall(vo);
		model.addAttribute("hallList", list);
	}
	
	@RequestMapping(value = "/studio", method = RequestMethod.GET)
	public void studioGET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("studioGET Called!!!");
		List<WeddingStudioVo> list = hService.SearchAllstudio(vo);
		model.addAttribute("studioList", list);
	}
	
	
	// 홀 업체 추가
	@RequestMapping(value = "/hall/add", method = RequestMethod.GET)
	public void halladdGET() throws Exception {
		logger.info("halladdGET Called!!!");
	}
	
	@RequestMapping(value = "/hall/add", method = RequestMethod.POST)
	public String halladdPOST(WeddingHallVo vo, Model model) throws Exception {
		logger.info("halladdPOST Called!!!");
		hService.hallAdd(vo);

		model.addAttribute("result", "SUCCESS");
		return "redirect:/management/hall";
	}

	// 스튜디오 업체 추가
	@RequestMapping(value = "/studio/add", method = RequestMethod.GET)
	public void studioaddGET() throws Exception {
		logger.info("studioaddGET Called!!!");
	}
	
	@RequestMapping(value = "/studio/add", method = RequestMethod.POST)
	public String studioaddPOST(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("studioaddPOST Called!!!");
		hService.studioAdd(vo);

		model.addAttribute("result", "SUCCESS");
		return "redirect:/management/studio";
	}
	
	
	// 홀 업체 수정
	@RequestMapping(value = "/hall/edit", method = RequestMethod.POST)
	public void halleditPOST(@RequestParam("hall_hno") int hall_hno, Model model) throws Exception {
		logger.info("halleditPOST Called!!!");
		WeddingHallVo vo = hService.getHallByHNO(hall_hno);
		model.addAttribute("editHall", vo);
	}
	
	@RequestMapping(value = "/hall/editSubmit", method = RequestMethod.POST)
	public String halleditSubmitPOST(WeddingHallVo vo) throws Exception {
		logger.info("halleditSubmitPOST Called!!!");

		hService.hallEdit(vo);
		return "redirect:/management/hall";
	}

	// 스튜디오 업체 수정
	@RequestMapping(value = "/studio/edit", method = RequestMethod.POST)
	public void studioeditPOST(@RequestParam("studio_hno") int studio_hno, Model model) throws Exception {
		logger.info("studioeditPOST Called!!!");
		WeddingStudioVo vo = hService.getStudioByHNO(studio_hno);
		model.addAttribute("editStudio", vo);
	}
	
	@RequestMapping(value = "/studio/editSubmit", method = RequestMethod.POST)
	public String studioeditSubmitPOST(WeddingStudioVo vo) throws Exception {
		logger.info("studioeditSubmitPOST Called!!!");

		hService.studioEdit(vo);
		return "redirect:/management/studio";
	}
	
	
	// 홀 업체 삭제
	@RequestMapping(value = "/hall/delete", method = RequestMethod.POST)
	public String halldeletePOST(@RequestParam("hall_hno") int hall_hno) throws Exception {
		logger.info("halldeletePOST Called!!!");

		WeddingHallVo vo = hService.getHallByHNO(hall_hno);
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("hno", hall_hno);
		paramMap.put("WeddingHallVo", vo);
		
		hService.hallDeleteByHNO(paramMap);
		return "redirect:/management/hall";
	}

	// 스튜디오 업체 삭제
	@RequestMapping(value = "/studio/delete", method = RequestMethod.POST)
	public String studiodeletePOST(@RequestParam("studio_hno") int studio_hno) throws Exception {
		logger.info("studiodeletePOST Called!!!");
		
		WeddingStudioVo vo = hService.getStudioByHNO(studio_hno);
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("hno", studio_hno);
		paramMap.put("WeddingStudioVo", vo);
		
		hService.studioDeleteByHNO(paramMap);
		return "redirect:/management/studio";
	}
	
	// 홀 이미지 업로드
	@ResponseBody
	@RequestMapping(value = "/uploadHallImg", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> uploadHallImgPOST(MultipartFile file) throws Exception {
		logger.info("uploadHallImgPOST Called!!!");
		
		return new ResponseEntity<String>(
				UploadFileUtils.uploadFile(file.getOriginalFilename(), uploadPath, file.getBytes()),
				HttpStatus.CREATED
		);
	}
	
	// 홀 이미지 삭제
	@RequestMapping(value = "/deleteHallImg", method = RequestMethod.POST)
	public ResponseEntity<String> deleteHallImgPOST(String fileName) throws Exception {
		logger.info("deleteHallImgPOST Called!!!");
		hService.DeleteHallImg(fileName);
		
		ResponseEntity<String> entity = null;
		
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
		MediaType mType = MediaUtils.getMediaType(formatName);
		
		if(mType != null) {
			String front = fileName.substring(0, 12);
			String end = fileName.substring(14);
			new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
		}
		
		new File(uploadPath+fileName.replace('/', File.separatorChar)).delete();
		entity = new ResponseEntity<String>("deleted", HttpStatus.OK);
		
		return entity;
	}
	
	// 홀 이미지 불러오기
	@ResponseBody
	@RequestMapping(value = "/getAttachHallImg/{hno}/{hall_area}/{hall_link}", method = RequestMethod.GET)
	public List<String> getAttachHallImgGET(
			@PathVariable("hno") int hno,
			@PathVariable("hall_area") int hall_area,
			@PathVariable("hall_link") String hall_link
			) throws Exception {
		logger.info("getAttachHallImgGET Called!!!");
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("hno", hno);
		paramMap.put("hall_area", hall_area);
		paramMap.put("hall_link", hall_link);
		
		List<String> list = hService.getAttachHallImg(paramMap);
		return list;
	}
	
	// 스튜디오 이미지 업로드
	@RequestMapping(value = "/uploadStudioImg", method = RequestMethod.POST, produces = "text/plain; charset=UTF-8")
	public ResponseEntity<String> uploadStudioImgPOST(MultipartFile file) throws Exception {
		logger.info("uploadStudioImgPOST Called!!!");
		
		return new ResponseEntity<String>(
				UploadFileUtils.uploadFile(file.getOriginalFilename(), uploadPath, file.getBytes()),
				HttpStatus.CREATED
		);
	}

	// 스튜디오 이미지 삭제
	@RequestMapping(value = "/deleteStudioImg", method = RequestMethod.POST)
	public ResponseEntity<String> deleteStudioImgPOST(String fileName) throws Exception {
		logger.info("deleteStudioImgPOST Called!!!");
		hService.DeleteStudioImg(fileName);
		
		ResponseEntity<String> entity = null;
		
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
		MediaType mType = MediaUtils.getMediaType(formatName);
		
		if(mType != null) {
			String front = fileName.substring(0, 12);
			String end = fileName.substring(14);
			new File(uploadPath + (front + end).replace('/', File.separatorChar)).delete();
		}
		
		new File(uploadPath+fileName.replace('/', File.separatorChar)).delete();
		entity = new ResponseEntity<String>("deleted", HttpStatus.OK);
		
		return entity;
	}

	// 스튜디오 이미지 불러오기
	@ResponseBody
	@RequestMapping(value = "/getAttachStudioImg/{hno}/{studio_area}/{studio_link}", method = RequestMethod.GET)
	public List<String> getAttachStudioImgGET(
			@PathVariable("hno") int hno,
			@PathVariable("studio_area") int studio_area,
			@PathVariable("studio_link") String studio_link
			) throws Exception {
		logger.info("getAttachStudioImgGET Called!!!");
		
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("hno", hno);
		paramMap.put("studio_area", studio_area);
		paramMap.put("studio_link", studio_link);
		
		List<String> list = hService.getAttachStudioImg(paramMap);
		return list;
	}
	
	@RequestMapping(value = "/displayFile")
	public ResponseEntity<byte[]> displayFileGET_POST(String fileName) throws Exception {
		logger.info("displayFileGET & POST Called!!!"); InputStream in = null;
		ResponseEntity<byte[]> entity = null;
		
		try {
			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
			MediaType mType  = MediaUtils.getMediaType(formatName);
			HttpHeaders headers = new HttpHeaders();
			
			in = new FileInputStream(uploadPath + fileName);
			
			if(mType != null) { headers.setContentType(mType); }
			else {
				fileName = fileName.substring(fileName.indexOf("_") + 1);
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-disposition", "attachment;fileName=\""
						+ new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
			}
			
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
		}
		catch (Exception e) { e.printStackTrace(); }
		finally { in.close(); }
		return entity;
	}
	
}
