package codes2_15.asyncServlet;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.AsyncContext;
import javax.servlet.ServletRequest;

public class Executor implements Runnable{

	private AsyncContext actx = null;
	
	public Executor(AsyncContext actx) {
		super();
		this.actx = actx;
	}

	@Override
	public void run(){
		try{
			Thread.sleep(5*1000);
			ServletRequest request = actx.getRequest();
			List<String> books = new ArrayList<String>();
			books.add("三体1");
			books.add("三体2");
			books.add("三体3");
			request.setAttribute("books", books);
			actx.dispatch("/codes/02/2.15/async.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
