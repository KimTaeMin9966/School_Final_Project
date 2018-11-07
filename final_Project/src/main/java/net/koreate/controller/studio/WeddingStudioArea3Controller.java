package net.koreate.controller.studio;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.koreate.service.WeddingStudioService;
import net.koreate.vo.WeddingStudioVo;

@Controller
@RequestMapping("/wedding/studio/area3/*")
public class WeddingStudioArea3Controller {
	private static final Logger logger = LoggerFactory.getLogger(WeddingStudioArea3Controller.class);
	
	@Inject
	WeddingStudioService service;
	
	@RequestMapping(value = "/detail1", method = RequestMethod.GET)
	public void detail1GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail1GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail1");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail1", list);
	}
	
	@RequestMapping(value = "/detail2", method = RequestMethod.GET)
	public void detail2GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail2GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail2");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail2", list);
	}
	
	@RequestMapping(value = "/detail3", method = RequestMethod.GET)
	public void detail3GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail3GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail3");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail3", list);
	}
	
	@RequestMapping(value = "/detail4", method = RequestMethod.GET)
	public void detail4GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail4GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail4");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail4", list);
	}
	
	@RequestMapping(value = "/detail5", method = RequestMethod.GET)
	public void detail5GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail5GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail5");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail5", list);
	}

	@RequestMapping(value = "/detail6", method = RequestMethod.GET)
	public void detail6GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail6GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail6");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail6", list);
	}
	
	@RequestMapping(value = "/detail7", method = RequestMethod.GET)
	public void detail7GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail7GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail7");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail7", list);
	}

	@RequestMapping(value = "/detail8", method = RequestMethod.GET)
	public void detail8GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("detail8GET Called!!!");
		
		vo.setStudio_area(3); vo.setStudio_link("detail8");
		WeddingStudioVo list = service.SearchAreaStudioDetail(vo);
		model.addAttribute("detail8", list);
	}
	
}
