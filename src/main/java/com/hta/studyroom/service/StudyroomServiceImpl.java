package com.hta.studyroom.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import com.hta.studyroom.repository.StudyroomDto;


//이곳은 스터디룸 예약에 관련된 DB작업을  하는 클래스. StudyroomService interface를 상속받았다. Mybatis를 사용.
public class StudyroomServiceImpl implements StudyroomService {

	private JdbcTemplate JdbcTemplate;  //디비 연결 (스프링 JDBC 접근방법), 즉 

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {JdbcTemplate = jdbcTemplate;}
	// 여기들어간다.
	
	
	//예약 리스트 전체보기
	public List getRoomResList() throws SQLException {
		
		return null;
	}
	//예약 내용 읽기
	public StudyroomDto findByRes_num(int reservation_num) throws SQLException {
		
		return null;
	}
	//예약 쓰기 기능
	public void resWrite(StudyroomDto sturdyroomdto) throws SQLException {
	

	}
	//예약 삭제 기능 - 차후 예약 취소쪽으로 생각
	public void resDelete(int reservation_num) throws SQLException {
		

	}

}
