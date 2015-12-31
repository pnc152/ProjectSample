package com.hta.member.service;

import java.sql.SQLException;

import com.hta.member.repository.Member;
import com.hta.exception.IdPasswordNotMachingException;

import mybatis.MemberManager;

public class MemberServiceImpl implements MemberService {

	public void write(Member dto) throws SQLException {
		// TODO Auto-generated method stub
		System.out.println("이름 값:"+dto.getMember_name());
		MemberManager.write2(dto);
	}
	
	public Member selectByEmail(String email) {
		
		return MemberManager.selectByEmail(email); //주입된 이메일 값 전달
	}

	public Member authenticate(String email, String password) {// 다가져가는게 좋다.
		// TODO Auto-generated method stub
		Member dto = MemberManager.selectByEmail(email);//dto는 여기서 모든 정보를 가져오고 있다.
		
		if(dto == null){//입력한 email에 관한 정보가 DB에 없을 경우
			throw new IdPasswordNotMachingException(); //
		}
		
		if(!dto.matchPassword(password)){
			throw new IdPasswordNotMachingException();
		}
		
		return dto;
	}

	public Member pwChage(String password, String newpassword, String newpasswordcomf) {
		// TODO Auto-generated method stub
		return null;
	}
	


}
