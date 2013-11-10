package codes2_10.loginServlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet(name="LoginServlet",urlPatterns="/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @throws ServletException, IOException  
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String errMsg="";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Properties properties = new Properties();
		properties.load(new FileInputStream("H:/Developer/Java work space/CrazyJava/DBConfig/MySql.properties"));
		DbDAO db = new DbDAO(properties.getProperty("driver"),properties.getProperty("url"),properties.getProperty("user"),properties.getProperty("password"));
		ResultSet rs = null;
		try {
			rs = db.query("select password from login where name = ?", username);
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			if(rs.next()){
				if(rs.getString(1).equals(password)){
					HttpSession session = request.getSession(true);
					session.setAttribute("name", username);
					RequestDispatcher rd = request.getRequestDispatcher("codes/02/2.10/welcome.jsp");
					rd.forward(request, response);
				}
			}else{
				errMsg = "The username doesn't exist!"; 
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(errMsg!=null&&!errMsg.equalsIgnoreCase("")){
			RequestDispatcher rd = request.getRequestDispatcher("codes/02/2.10/login.jsp");
			request.setAttribute("err", errMsg);
			rd.forward(request, response);
		}
	}
}
