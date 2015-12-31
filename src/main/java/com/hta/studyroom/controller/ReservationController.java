package com.hta.studyroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.hta.board.repository.BoardDto;

@Controller
public class ReservationController {

	@RequestMapping("/reservation.study")
	public ModelAndView form(){
		ModelAndView mav = new ModelAndView("/study_room/reservation/step1");
		return mav;
		
	}
	
	@RequestMapping(value="/reservation.study", method=RequestMethod.POST)//POST방식 이동, 예form로 통해 이동
	public String  submitted(@ModelAttribute BoardDto dto){//@ModelAttribute란
		System.out.println("예약 저장....");
		//System.out.println(dto.getB_title() +","+ dto.getB_content());
		try {
			boardService.write(dto);
		} catch (Exception err) {
			System.out.println("writeErrorMessage:"+ err);
		}
		return "redirect:list.board";//"/WEB-INF/views/board/list.jsp";//dB를 거치지 않고 가기때문에 입력한 결과값이 보지 않고 나온다.
																		//이것을 해결하기위해 redirect:를 사용한다. 마치 클라이언트가 다시 서버에 요청한것 처럼...결과를 준다.
	}
	
	
	
	
	
	@RequestMapping("/reservation2.study")
	public ModelAndView form2(){
		ModelAndView mav = new ModelAndView("/study_room/reservation/step2");
		return mav;
	}
}
