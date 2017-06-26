package cn.edu.sjtu.iasdsp.Aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Aspect 
@Component
public class PermissionAspect {


	@Before(value="execution(* cn.edu.sjtu.iasdsp.permission.*.add*(..))")
	public void checkPermission(JoinPoint joinPoint){
		System.out.println("permission aspect check");
		
	}
}