package codes2_13.listener;

import java.sql.ResultSet;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import codes2_10.loginServlet.DbDAO;

/**
 * Application Lifecycle Listener implementation class RequestListener
 *
 */
@WebListener
public class RequestListener implements ServletRequestListener {

    /**
     * Default constructor. 
     */
    public RequestListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletRequestListener#requestDestroyed(ServletRequestEvent)
     */
    public void requestDestroyed(ServletRequestEvent arg0) {
    	
    }

	/**
     * @see ServletRequestListener#requestInitialized(ServletRequestEvent)
     */
    //当用户请求到达时,被初始化时触发该方法
    public void requestInitialized(ServletRequestEvent arg0) {
    	HttpServletRequest request = (HttpServletRequest)arg0.getServletRequest();
        HttpSession session = request.getSession();
        //获取SessionId和IP地址以及正在访问的页面
        String sessionId = session.getId();
        String ip = request.getRemoteAddr();
        String page = request.getRequestURI();
        
        String user = (String)session.getAttribute("user");
        if(user==null){
        	user="游客";
        }
        try{
        	DbDAO dd = new DbDAO("com.mysql.jdbc.Driver","jdbc:mysql://127.0.0.1:3306/jianjian",
        						"root","198710");
        	ResultSet rs = dd.query("select * from online_inf where session_id=?", sessionId);
        	if(rs.next()){
        		rs.updateString(4, page);
        		rs.updateLong(5, System.currentTimeMillis());
        		rs.updateRow();
        		rs.close();
        	}else{
        		dd.insert("insert into online_inf values(?,?,?,?,?)", sessionId,user,ip,page,System.currentTimeMillis());
        	}
        }catch(Exception e){
        	e.printStackTrace();
        }
    }
	
}
