package codes2_10.ServletDemo;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestServlet
 */
@WebServlet(name="testServlet",urlPatterns={"/TestServlet"},initParams={@WebInitParam(name="driver",value="com.mysql.jdbc.Driver"),
												   @WebInitParam(name="url",value="jdbc:mysql://127.0.0.1:3306/jianjian"),
												   @WebInitParam(name="user",value="root"),
												   @WebInitParam(name="password",value="198710")})
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    
    public void init(ServletConfig config)throws ServletException{
    	super.init(config);
		String driver = config.getInitParameter("driver");
		String url = config.getInitParameter("url");
		String name = config.getInitParameter("user");
		String password = config.getInitParameter("password");
		System.out.println(driver);
		System.out.println(url);
		System.out.println(name);
		System.out.println(password);
    	
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
