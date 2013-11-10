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
 * (1)Servlet3.0规范引入了异步处理,允许Servlet重新发起一条新线程去调用耗时的业务方法以避免等待
 * (2)异步处理通过AsynceContext类来处理,通过ServletRequest的startAsync()和startAsync(ServletRequest,ServletResponse)方法来创建
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
		out.println("<title>异步调用示例</title>");
		out.println("进入Servlet的时间: "+new Date()+".<br/>");
		out.flush();
		AsyncContext actx = request.startAsync();
		actx.addListener(new MyAsyncListener());
		actx.setTimeout(30*1000);
		actx.start(new Executor(actx));
		out.println("结束Servlet的时间: "+new Date()+".<br/>");
		out.flush();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
