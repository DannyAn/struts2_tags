package action;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport{
	private String uname;
	private String upass;
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String execute(){
		if(!"chenheng".equals(uname)){
			//添加业务逻辑错误消息
			this.addActionMessage("用户名错误！");
			return "fail";
		}else if(!"123456".equals(upass)){
			//添加业务逻辑错误消息
			this.addActionError("密码错误！");
			return "fail";
		}
		return SUCCESS;
	}
}
