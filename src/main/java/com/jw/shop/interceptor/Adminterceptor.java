package com.jw.shop.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.lang.Nullable;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jw.shop.domain.UserVO;


public class Adminterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		boolean sessionFlag = false;
		System.out.println("인터셉터 실행");
		UserVO vo = (UserVO) request.getSession().getAttribute("shopMember");
		if(vo.getShop_id().equals("admin")) {
			sessionFlag = true;
		} else {
			sessionFlag = false;
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('관리자만 접근 가능합니다'); history.go(-1);</script>");
			out.flush();
		}
		return sessionFlag;
	}

	/**
	 * This implementation is empty.
	 */
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			@Nullable ModelAndView modelAndView) throws Exception {
		
	}
	
}
