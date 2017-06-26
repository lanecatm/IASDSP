package cn.edu.sjtu.iasdsp.Aop;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

@Component
public class PermissionOut {

	public PermissionOut() {
		super();
	}

	private Permission permission;

	public Permission getPermission() {
		return permission;
	}

	@Resource
	public void setPermission(Permission permission) {
		System.out.println("new permission");
		this.permission = permission;
	}
	
	public void aadd(){
		permission.add();
	}
}