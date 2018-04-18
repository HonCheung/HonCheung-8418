/**
 * 
 * 
 * 创建时间：2018-4-4 下午9:19:37
 *
 * @author：zhanghan
 */
package cn.com.action;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;

/**
 * 
 * 
 * 创建时间：2018-4-4 下午9:19:37
 *
 * @author：zhanghan
 * 
 */
public class VerifyEmailAction implements Serializable {

	private String email = null;
	
	private InputStream inputStream = null;

	public String execute() throws Exception {
		
		email = new String(email.getBytes("ISO-8859-1"), "UTF-8");
		
		String message = null;
		
		if (email.equalsIgnoreCase("sa") || email.equalsIgnoreCase("admin")) {
			message = "<span class='red'>邮箱已注册</span>";
		} else {
			message = "<span class='blue'>邮箱可以使用</span>";
		}
		
		inputStream = new ByteArrayInputStream(message.getBytes("UTF-8"));
		
		return "success";
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the inputStream
	 */
	public InputStream getInputStream() {
		return inputStream;
	}

	/**
	 * @param inputStream the inputStream to set
	 */
	public void setInputStream(InputStream inputStream) {
		this.inputStream = inputStream;
	}
	
}
