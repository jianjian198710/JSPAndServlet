package codes2_15.asyncServlet;

import java.io.IOException;

import javax.servlet.AsyncEvent;
import javax.servlet.AsyncListener;

public class MyAsyncListener implements AsyncListener{

	@Override
	public void onComplete(AsyncEvent arg0) throws IOException {
		System.out.println("------�첽�������-------");
		
	}

	@Override
	public void onError(AsyncEvent arg0) throws IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void onStartAsync(AsyncEvent arg0) throws IOException {
		System.out.println("------�첽���ÿ�ʼ-------");		
	}

	@Override
	public void onTimeout(AsyncEvent arg0) throws IOException {
		// TODO Auto-generated method stub
		
	}

	
}
