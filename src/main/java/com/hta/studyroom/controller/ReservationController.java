package com.hta.studyroom.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hta.studyroom.repository.StudyroomDto;
import com.hta.studyroom.service.StudyroomService;
import com.hta.member.service.MemberService;


@Controller
public class ReservationController {
	private StudyroomService studyroomService;
//	private MemberService memberService;
	
//	public void setMemberService(MemberService memberService) {
//		this.memberService = memberService;
//	}

	public void setStudyroomService(StudyroomService studyroomService) {
		this.studyroomService = studyroomService;
	}

	@RequestMapping("/reservation.study")
	public ModelAndView form(){
		ModelAndView mav = new ModelAndView("/study_room/reservation/step1");
		return mav;
		
	}
	/*
	@RequestMapping(value="/reservation2.study", method=RequestMethod.POST)//POST방식 이동, 예form로 통해 이동
	public String  resSubmitted(@ModelAttribute StudyroomDto studyroomdto){//@ModelAttribute란
		System.out.println("예약 저장....");
		System.out.println(studyroomdto.getMember_email());
		System.out.println(studyroomdto.getReservation_date());
		System.out.println(studyroomdto.getTable_num());
		System.out.println(studyroomdto.getReservation_time());
		
		//System.out.println(dto.getB_title() +","+ dto.getB_content());
		try {
			studyroomService.resWrite(studyroomdto);
		} catch (Exception err) {
			System.out.println("resWriteErrorMessage:"+ err);
		}
		return "/study_room/reservation/step2";//"/WEB-INF/views/board/list.jsp";//dB를 거치지 않고 가기때문에 입력한 결과값이 보지 않고 나온다.
																		//이것을 해결하기위해 redirect:를 사용한다. 마치 클라이언트가 다시 서버에 요청한것 처럼...결과를 준다.
	}
	
	*/
	
	@RequestMapping(value="/reservation2.study", method=RequestMethod.POST )
	public ModelAndView submit(@ModelAttribute StudyroomDto studyroomdto, HttpSession session, HttpServletRequest req){

		System.out.println("예약 저장....");
		System.out.println(studyroomdto.getMember_email());
		System.out.println(studyroomdto.getReservation_date());
		System.out.println(studyroomdto.getTable_num());
		System.out.println(studyroomdto.getReservation_time());
		System.out.println(studyroomdto.getClass());
		try {
			
			
			//계정을 세션에 저장.
			String memberEmail = (String)session.getAttribute("email");
				session.setAttribute("member_email", memberEmail); //session에 이메일값 저장.
				studyroomdto.setMember_email(memberEmail);
				
			String memberName = (String) session.getAttribute("name");
				session.setAttribute("member_name", memberName);
				studyroomdto.setMember_name(memberName);
				
				//step1.jsp에서 전달받은 데이터를 스터디룸 좌석 예약 DB에 입력
				studyroomService.resWrite(studyroomdto);
				
		} catch (Exception err) {
			System.out.println("스터디룸 좌석 예약 부분:"+ err);
		}
		
		ModelAndView mav = new ModelAndView("/study_room/reservation/step2");
		mav.addObject("studyroomdto", studyroomdto);
		
		
		
		
		
		System.out.println("예약 저장....");
		System.out.println(studyroomdto.getMember_email());
		System.out.println(studyroomdto.getReservation_date());
		System.out.println(studyroomdto.getTable_num());
		System.out.println(studyroomdto.getReservation_time());
		System.out.println(studyroomdto.getClass());
		System.out.println(studyroomdto.getMember_name());
		
		return mav;
	}
	
	

}
