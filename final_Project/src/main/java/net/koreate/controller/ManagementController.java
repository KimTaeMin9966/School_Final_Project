package net.koreate.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import net.koreate.service.MemberService;
import net.koreate.service.WeddingHallService;
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
		return "redirect:/member/management";
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
	
	@ResponseBody
	@RequestMapping(value = "/hall/edit", method = RequestMethod.PATCH)
	public String halleditPATCH(@RequestBody WeddingHallVo vo) throws Exception {
		logger.info("halleditPATCH Called!!!");
		System.out.println(vo);
		hService.hallEdit(vo);
		return "SUCCESS";
	}

	// 스튜디오 업체 수정
	@RequestMapping(value = "/studio/edit", method = RequestMethod.POST)
	public void studioeditPOST(@RequestParam("studio_hno") int studio_hno, Model model) throws Exception {
		logger.info("studioeditPOST Called!!!");
		WeddingStudioVo vo = hService.getStudioByHNO(studio_hno);
		model.addAttribute("editStudio", vo);
	}
	
	@ResponseBody
	@RequestMapping(value = "/studio/edit", method = RequestMethod.PATCH)
	public String studioeditPATCH(@RequestBody WeddingStudioVo vo) throws Exception {
		logger.info("studioeditPATCH Called!!!");
		hService.studioEdit(vo);
		return "SUCCESS";
	}
	
	
	// 홀 업체 삭제
	@RequestMapping(value = "/hall/delete", method = RequestMethod.POST)
	public String halldeletePOST(@RequestParam("hall_hno") int hall_hno) throws Exception {
		logger.info("halldeletePOST Called!!!");
		hService.hallDeleteByHNO(hall_hno);
		return "redirect:/management/hall";
	}

	// 스튜디오 업체 삭제
	@RequestMapping(value = "/studio/delete", method = RequestMethod.POST)
	public String studiodeletePOST(@RequestParam("studio_hno") int studio_hno) throws Exception {
		logger.info("studiodeletePOST Called!!!");
		hService.studioDeleteByHNO(studio_hno);
		return "redirect:/management/studio";
	}
	
}
