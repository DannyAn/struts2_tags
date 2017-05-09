package action;
import com.opensymphony.xwork2.ActionSupport;
public class ActionTag extends ActionSupport{
	private String paramString = "";
	public String execute(){
		if("".equals(paramString)){
			paramString = "请求参数的值为空！";
		}else{
			paramString = "请求参数的值为：" + paramString;
		}
		return SUCCESS;
	}
	public String getParamString() {
		return paramString;
	}
	public void setParamString(String paramString) {
		this.paramString = paramString;
	}
	
}
