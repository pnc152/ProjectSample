package com.hta.studyroom.service;

import java.sql.SQLException;
import java.util.List;

import com.hta.board.repository.BoardDto;
import com.hta.studyroom.repository.StudyroomDto;
//인터페이스
public interface StudyroomService {
	//전체 예약 목록 가져오기
	public List getRoomResList() throws SQLException;
	
	//특정 예약 목록 가져오기(읽기 기능)
	public StudyroomDto findByRes_num(int reservation_num) throws SQLException;
	
	//예약 저장
	public void resWrite(StudyroomDto sturdyroomdto) throws SQLException;
	
	//예약 삭제
	public void resDelete(int reservation_num) throws SQLException;
}
