package cn.com.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoadMenuServlet
 */
public class LoadMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoadMenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String strFilePath = request.getSession().getServletContext().getRealPath("/menu3_demo_content.html");
	
		FileInputStream fis = null;
		String strContent = null;
		
		try {
			fis = new FileInputStream(strFilePath);
			byte[] buffer = new byte[fis.available()];
			int iOff = 0;
			while (true) {
				int iLength = fis.read(buffer, iOff, buffer.length - iOff);
				if (iLength <= 0) {
					break;
				}
				iOff += iLength;
			}
			strContent = new String(buffer, "UTF-8");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			fis.close();
		}
		
		response.setHeader("content-Type", "text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(strContent);
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doGet(request, response);
	}

}
