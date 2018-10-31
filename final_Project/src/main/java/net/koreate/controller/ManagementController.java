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
	
	@RequestMapping(value = "/consulting", method = RequestMethod.GET)
	public void consultingGET() throws Exception {
		logger.info("consultingGET Called!!!");
	}

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
	
	@RequestMapping(value = "/consulting/add", method = RequestMethod.GET)
	public void consultingaddGET() throws Exception {
		logger.info("consultingaddGET Called!!!");
	}

	@RequestMapping(value = "/hall/add", method = RequestMethod.GET)
	public void halladdGET() throws Exception {
		logger.info("halladdGET Called!!!");
	}
	
	@RequestMapping(value = "/hall/add", method = RequestMethod.POST)
	public void halladdPOST(WeddingHallVo vo) throws Exception {
		logger.info("halladdPOST Called!!!");
	}
	
	@RequestMapping(value = "/studio/add", method = RequestMethod.GET)
	public void studioaddGET() throws Exception {
		logger.info("studioaddGET Called!!!");
	}
	
	@RequestMapping(value = "/studio/add", method = RequestMethod.POST)
	public void studioaddPOST(WeddingStudioVo vo) throws Exception {
		logger.info("studioaddPOST Called!!!");
	}
}
