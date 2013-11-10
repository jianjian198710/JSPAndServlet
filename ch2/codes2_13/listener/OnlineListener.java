package codes2_13.listener;

import java.util.Hashtable;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class OnlineListener
 *
 */
@WebListener
public class OnlineListener implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public OnlineListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent arg0) {
        HttpSession session = arg0.getSession();
        ServletContext application = session.getServletContext();
        String sessionId = session.getId();
        if(session.isNew()){
        	String user = (String)session.getAttribute("user");
        	if(user==null){
        		user="сн©м";
        	}
        	Map<String,String> online = (Map<String,String>)application.getAttribute("online");
        	if(online==null){
        		online = new Hashtable<String,String>();
        		online.put(sessionId, user);
        		application.setAttribute("online", online);
        	}
        }
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent arg0) {
        HttpSession session = arg0.getSession();
        ServletContext application = session.getServletContext();
        String sessionId = session.getId();
        Map<String,String> online = (Map<String,String>)application.getAttribute("online");
        if(online!=null){
        	online.remove(sessionId);
        }
        application.setAttribute("online", online);
    }
	
}
