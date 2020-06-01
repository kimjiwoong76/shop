package com.jw.shop.common.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;

@Aspect
//@Component
public class AOP {
	
	@Around("execution(* com.jw.shop.service.*.*(..))")
	public Object measure(ProceedingJoinPoint joinPoint) throws Throwable {
		// 메서드가 호출되기 전에 먼저 실행되는 코드
		long start = System.currentTimeMillis();
		
		// 메서드가 호출되는 시점
		Object result = joinPoint.proceed();
		
		//메서드가 호출되고 실행되는 코드
		long end = System.currentTimeMillis();
		
		return result;
	}
}
