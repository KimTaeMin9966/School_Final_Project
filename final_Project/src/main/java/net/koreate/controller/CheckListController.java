package net.koreate.controller;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.koreate.service.CheckListService;
import net.koreate.service.MemberService;
import net.koreate.vo.ListVo;

@Controller
@RequestMapping("/wedding/list/*")
public class CheckListController {
	private static final Logger logger = LoggerFactory.getLogger(CheckListController.class);
	
	@Inject
	CheckListService CLService;
	
	@Inject
	MemberService MBService;
	
	/*@RequestMapping(value = "/", method = RequestMethod.GET)
	public void GET(ListVo vo) throws Exception {
		logger.info("GET Called!!!");
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public void POST(ListVo vo) throws Exception {
		logger.info("POST Called!!!");
	}

	@RequestMapping(value = "/")
	public void GET_POST(ListVo vo) throws Exception {
		logger.info("GET & POST Called!!!");
	}*/
	
	// 저장
	@RequestMapping(value = "/step1Save", method = RequestMethod.POST)
	public String step1SavePOST(ListVo vo) throws Exception {
		logger.info("step1SavePOST Called!!!");
		CLService.STEP1Save(vo);
		
		return "redirect:/wedding/list";
	}
	
	@RequestMapping(value = "/step2Save", method = RequestMethod.POST)
	public String step2SavePOST(ListVo vo) throws Exception {
		logger.info("step2SavePOST Called!!!");
		CLService.STEP2Save(vo);
		
		return "redirect:/wedding/list";
	}
	
	@RequestMapping(value = "/step3Save", method = RequestMethod.POST)
	public String step3POST(ListVo vo) throws Exception {
		logger.info("step3POST Called!!!");
		CLService.STEP3Save(vo);
		
		return "redirect:/wedding/list";
	}
	
	@RequestMapping(value = "/step4Save", method = RequestMethod.POST)
	public String step4SavePOST(ListVo vo) throws Exception {
		logger.info("step4SavePOST Called!!!");
		CLService.STEP4Save(vo);
		
		return "redirect:/wedding/list";
	}
	
	// 수정
	@RequestMapping(value = "/step1Edit", method = RequestMethod.POST)
	public String step1EditPOST(ListVo vo) throws Exception {
		logger.info("step1EditPOST Called!!!");
		CLService.STEP1Edit(vo);
		
		return "redirect:/wedding/list";
	}
	
	@RequestMapping(value = "/step2Edit", method = RequestMethod.POST)
	public String step2EditPOST(ListVo vo) throws Exception {
		logger.info("step2EditPOST Called!!!");
		CLService.STEP2Edit(vo);
		
		return "redirect:/wedding/list";
	}

	@RequestMapping(value = "/step3Edit", method = RequestMethod.POST)
	public String step3EditPOST(ListVo vo) throws Exception {
		logger.info("step3EditPOST Called!!!");
		CLService.STEP3Edit(vo);
		
		return "redirect:/wedding/list";
	}

	@RequestMapping(value = "/step4Edit", method = RequestMethod.POST)
	public String step4EditPOST(ListVo vo) throws Exception {
		logger.info("step4EditPOST Called!!!");
		CLService.STEP4Edit(vo);
		
		return "redirect:/wedding/list";
	}
}