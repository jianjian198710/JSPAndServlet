package codes2_10.ServletDemo;
/**
 *  创建Servlet实例有两个时机
 *  (a)客户端第一次请求某个Servlet时,系统创建实例
 *  (b)load-on-startup Servlet
 */
import java.io.IOException;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TimerServlet
 */
@WebServlet(urlPatterns="/TimerServlet",loadOnStartup=1)
public class TimerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    //重写init()方法,应在第一行调用super.init(config)
    @Override
    public void init(ServletConfig config)throws ServletException{
    	super.init(config);
    	Timer timer = new Timer();
    	timer.schedule(new TimerTask(){
			@Override
			public void run() {
				System.out.println(new Date());
			}}, 0, 1000);
    	
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
