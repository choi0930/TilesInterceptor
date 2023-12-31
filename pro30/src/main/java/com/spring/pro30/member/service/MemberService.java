package com.spring.pro30.member.service;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.pro30.member.vo.MemberVO;

public interface MemberService {
	public List<MemberVO> listMembers() throws DataAccessException;
	public int addMember(MemberVO memberVO) throws DataAccessException;
	public int removeMember(String id)throws DataAccessException;
	public MemberVO login(MemberVO memberVO) throws DataAccessException;
	public MemberVO checkId(String id)throws DataAccessException;
	public MemberVO goModMemberForm(String id)throws DataAccessException;
	public int modMember(MemberVO memberVO)throws DataAccessException;
}
