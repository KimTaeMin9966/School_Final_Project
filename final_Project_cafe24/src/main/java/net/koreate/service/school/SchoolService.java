package net.koreate.service.school;

import net.koreate.vo.Criteria;
import net.koreate.vo.PageMaker;

public interface SchoolService {

	PageMaker getPageMaker(Criteria cri) throws Exception;

}
