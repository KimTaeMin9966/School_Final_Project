package net.koreate.controller.studio;

import java.util.List;

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
@RequestMapping("/wedding/studio/*")
public class WeddingStudioController {
	private static final Logger logger = LoggerFactory.getLogger(WeddingStudioController.class);
	
	@Inject
	WeddingStudioService service;
	
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
	
	@RequestMapping(value = "/area1", method = RequestMethod.GET)
	public void area1GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("area1GET Called!!!(부산진구)");
		vo.setStudio_area(1);
		List<WeddingStudioVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area2", method = RequestMethod.GET)
	public void area2GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("area2GET Called!!!");
		vo.setStudio_area(2);
		List<WeddingStudioVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
		
	}
	
	@RequestMapping(value = "/area3", method = RequestMethod.GET)
	public void area3GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("area3GET Called!!!");
		vo.setStudio_area(3);
		List<WeddingStudioVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area4", method = RequestMethod.GET)
	public void area4GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("area4GET Called!!!");
		vo.setStudio_area(4);
		List<WeddingStudioVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area5", method = RequestMethod.GET)
	public void area5GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("area5GET Called!!!");
		vo.setStudio_area(5);
		List<WeddingStudioVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area6", method = RequestMethod.GET)
	public void area6GET(WeddingStudioVo vo, Model model) throws Exception {
		logger.info("area6GET Called!!!");
		vo.setStudio_area(6);
		List<WeddingStudioVo> list = service.SearchArea(vo);
		model.addAttribute("list", list);
	}
	
}
