/**
 * 
 * 
 * 创建时间：2016-2-22 上午9:43:06
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
 * 查询数据的Servlet
 * 
 * 创建时间：2016-2-22 上午9:43:06
 * 
 * @author moshco zhu
 * 
 */
public class QueryDataServlet extends HttpServlet {

	/**
	 * 业务实现
	 * 
	 * 开发时间：2016-2-22 上午9:43:32
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

		// 查询参数
		String term = request.getParameter("term");

		// 被查询的数据
		String[] source = { "ActionScript", "AppleScript", "Asp", "BASIC", "C",
				"C++", "Clojure", "COBOL", "ColdFusion", "Erlang", "Fortran",
				"Groovy", "Haskell", "Java", "JavaScript", "Lisp", "Perl",
				"PHP", "Python", "Ruby", "Scala", "Scheme" };

		// 查询结果
		StringBuffer strb = new StringBuffer("[");
		for (int i = 0; i < source.length; i++) {// 遍历目标数组，返回符合条件的结果
			if (null != term) {
				if (source[i].indexOf(term) >= 0) {
					strb.append("{\"label\":\"" + source[i] + "\"},");
				}
			} else {
				strb.append("{\"label\":\"" + source[i] + "\"},");
			}
		}

		// 转换为字符串
		String strResult = strb.toString();
		// 去除尾部","
		if (strResult.endsWith(",")) {
			strResult = strResult.substring(0, strResult.length() - 1);
		}

		strResult += "]";

		// 输出结果
		response.setHeader("content-Type", "text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(strResult);
		out.flush();

	}

}
