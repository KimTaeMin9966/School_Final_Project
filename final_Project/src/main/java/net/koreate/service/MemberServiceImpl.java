package net.koreate.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import net.koreate.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDao dao;
	
}
