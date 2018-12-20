package net.koreate.dao.school;

import java.util.List;

import net.koreate.vo.Criteria;
import net.koreate.vo.Vote;

public interface SchoolDao {

	int voteCount(Criteria cri) throws Exception;

	// 진행중인 선거 내용 불러오기 2018/12/20
	List<Vote> getAllVotes() throws Exception;

	// 끝난 선거 내용 불러오기 2018/12/20
	List<Vote> getOldVotes(Criteria cri) throws Exception;

}
