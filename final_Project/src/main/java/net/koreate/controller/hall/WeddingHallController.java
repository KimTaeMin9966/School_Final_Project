package net.koreate.controller.hall;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.koreate.controller.MemberController;
import net.koreate.service.WeddingHallService;
import net.koreate.vo.MemberVo;

@Controller
@RequestMapping("/wedding/hall/*")
public class WeddingHallController {
	private static final Logger logger = LoggerFactory.getLogger(WeddingHallController.class);
	
	@Inject
	WeddingHallService service;
	
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
	public void area1GET(MemberVo vo, Model model) throws Exception {
		logger.info("area1GET Called!!!(부산 진구의 웨딩홀)");
		List<MemberVo> list = service.SearchArea1(vo);
		model.addAttribute("list", list);
	}
	
	@RequestMapping(value = "/area2", method = RequestMethod.GET)
	public void area2GET() throws Exception {
		logger.info("area2GET Called!!!");
		
	}
	
	@RequestMapping(value = "/area3", method = RequestMethod.GET)
	public void area3GET() throws Exception {
		logger.info("area3GET Called!!!");
	}
	
	@RequestMapping(value = "/area4", method = RequestMethod.GET)
	public void area4GET() throws Exception {
		logger.info("area4GET Called!!!");
	}
	
	@RequestMapping(value = "/area5", method = RequestMethod.GET)
	public void area5GET() throws Exception {
		logger.info("area5GET Called!!!");
	}
	
	@RequestMapping(value = "/area6", method = RequestMethod.GET)
	public void area6GET() throws Exception {
		logger.info("area6GET Called!!!");
	}
	
	@RequestMapping(value = "/area7", method = RequestMethod.GET)
	public void area7GET() throws Exception {
		logger.info("area7GET Called!!!");
	}
	
	@RequestMapping(value = "/area8", method = RequestMethod.GET)
	public void area8GET() throws Exception {
		logger.info("area8GET Called!!!");
	}
	
	@RequestMapping(value = "/area9", method = RequestMethod.GET)
	public void area9GET() throws Exception {
		logger.info("area9GET Called!!!");
	}
}
