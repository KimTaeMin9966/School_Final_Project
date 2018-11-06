package net.koreate.controller.hall;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.koreate.service.WeddingHallService;
import net.koreate.vo.WeddingHallVo;

@Controller
@RequestMapping("/wedding/hall/*")
public class WeddingHallController {
	private static final Logger logger = LoggerFactory.getLogger(WeddingHallController.class);
	
	@Inject
	WeddingHallService service;
	
	@RequestMapping(value = "/area1", method = RequestMethod.GET)
	public void area1GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area1GET Called!!!(부산진구)");
		
		vo.setHall_area(1);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area1", list);
	}
	
	@RequestMapping(value = "/area2", method = RequestMethod.GET)
	public void area2GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area2GET Called!!!");
		
		vo.setHall_area(2);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area2", list);
	}
	
	@RequestMapping(value = "/area3", method = RequestMethod.GET)
	public void area3GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area3GET Called!!!");
		
		vo.setHall_area(3);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area3", list);
	}
	
	@RequestMapping(value = "/area4", method = RequestMethod.GET)
	public void area4GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area4GET Called!!!");
		
		vo.setHall_area(4);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area4", list);
	}
	
	@RequestMapping(value = "/area5", method = RequestMethod.GET)
	public void area5GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area5GET Called!!!");
		
		vo.setHall_area(5);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area5", list);
	}
	
	@RequestMapping(value = "/area6", method = RequestMethod.GET)
	public void area6GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area6GET Called!!!");
		
		vo.setHall_area(6);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area6", list);
	}
	
	@RequestMapping(value = "/area7", method = RequestMethod.GET)
	public void area7GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area7GET Called!!!");
		
		vo.setHall_area(7);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area7", list);
	}
	
	@RequestMapping(value = "/area8", method = RequestMethod.GET)
	public void area8GET(WeddingHallVo vo, HttpSession session) throws Exception {
		logger.info("area8GET Called!!!");
		
		vo.setHall_area(8);
		List<WeddingHallVo> list = service.SearchArea(vo);
		session.setAttribute("area8", list);
	}
	
}
