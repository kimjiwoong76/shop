package com.jw.shop.interceptor;

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
		} else if(request.getAttribute("shopMember") == null) {
			response.sendRedirect("/index.do");
			sessionFlag = false;
		} else {
			response.sendRedirect("/index.do");
			sessionFlag = false;
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
