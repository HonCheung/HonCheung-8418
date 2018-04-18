/**
 * 
 * 
 * 创建时间：2016-2-20 下午6:00:35
 * @author：moshco zhu
 */
package cn.com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 节目列表
 * 
 * 创建时间：2016-2-20 下午6:00:35
 * 
 * @author moshco zhu
 * 
 */
public class QueryProgramServlet extends HttpServlet {

	/**
	 * 业务实现
	 * 
	 * 开发时间：2016-2-20 下午6:01:00
	 * 
	 * @author：moshco zhu
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	@Override
	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// 输出结果
		response.setHeader("content-Type", "text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<br />节目列表加载成功！<br />");
		out.flush();

	}

}
