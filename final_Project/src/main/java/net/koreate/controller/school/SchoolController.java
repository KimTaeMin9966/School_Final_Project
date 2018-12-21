package net.koreate.controller.school;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import net.koreate.service.SchoolService;
import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;
import net.koreate.vo.Vote;

@Controller
@RequestMapping("/school/*")
public class SchoolController {
	private static final Logger logger = LoggerFactory.getLogger(SchoolController.class);
	
	@Inject
	SchoolService service;
	
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
	
	@RequestMapping(value = "/vote", method = RequestMethod.GET)
	public void voteGET(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		logger.info("voteGET Called!!!");
		
		// 진행중인 선거 내용 불러오기 2018/12/20
		List<Vote> vote = service.getAllVotes();
		
		// 끝난 선거 내용 불러오기 2018/12/20
		List<Vote> oldVote = service.getOldVotes(cri);
		
		PageMaker pageMaker = service.getPageMaker(cri);
		model.addAttribute(pageMaker);
		model.addAttribute("vote", vote);
		model.addAttribute("votes_history", oldVote);
	}
}
