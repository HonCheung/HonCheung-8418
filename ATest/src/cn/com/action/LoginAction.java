/**
 * 
 * 
 * 创建时间：2018-4-7 上午10:25:30
 *
 * @author：zhanghan
 */
package cn.com.action;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

import cn.com.pojo.User;

/**
 * 
 * 
 * 创建时间：2018-4-7 上午10:25:30
 *
 * @author：zhanghan
 * 
 */
public class LoginAction implements Serializable {

	private String userName = null;
	
	private String password = null;
	
	private User user = null;
	
	private Boolean isPass = true;
	
	private String message = null;
	
	private Map<String, Object> resultMap = null;
	
	public String execute() {
		
		if (userName == null || !userName.equals("sa") || password == null || !password.equals("sa")) {
			
			isPass = false;
			
			message = "用户名或密码错误";
			
		} else {
			
			user = new User();
			user.setUserName(userName);
			user.setPassword(password);
			user.setTrueName("张");
			user.setSex("男");
			user.setDept("技术部");
			user.setPhone("8864512");
			user.setAddress("河北省石家庄");
			
			message = "恭喜，登录成功。";
			
		}
		
		resultMap = new HashMap<String, Object>();
		resultMap.put("isPass", isPass);
		resultMap.put("message", message);
		resultMap.put("user", user);
		
		// 返回函数值
		return "success";
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 * @return the user
	 */
	public User getUser() {
		return user;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(User user) {
		this.user = user;
	}

	/**
	 * @return the isPass
	 */
	public Boolean getIsPass() {
		return isPass;
	}

	/**
	 * @param isPass the isPass to set
	 */
	public void setIsPass(Boolean isPass) {
		this.isPass = isPass;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return the resultMap
	 */
	public Map<String, Object> getResultMap() {
		return resultMap;
	}

	/**
	 * @param resultMap the resultMap to set
	 */
	public void setResultMap(Map<String, Object> resultMap) {
		this.resultMap = resultMap;
	}

}
