package codes2_15.asyncServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * (1)Servlet3.0�淶�������첽����,����Servlet���·���һ�����߳�ȥ���ú�ʱ��ҵ�񷽷��Ա���ȴ�
 * (2)�첽����ͨ��AsynceContext��������,ͨ��ServletRequest��startAsync()��startAsync(ServletRequest,ServletResponse)����������
 * (3)
 */
@WebServlet(urlPatterns="/async",asyncSupported=true)
public class AsyncServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AsyncServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<title>�첽����ʾ��</title>");
		out.println("����Servlet��ʱ��: "+new Date()+".<br/>");
		out.flush();
		AsyncContext actx = request.startAsync();
		actx.addListener(new MyAsyncListener());
		actx.setTimeout(30*1000);
		actx.start(new Executor(actx));
		out.println("����Servlet��ʱ��: "+new Date()+".<br/>");
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
