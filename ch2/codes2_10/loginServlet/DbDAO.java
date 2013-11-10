package codes2_10.loginServlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class DbDAO {
	
	private String driver;
	private String url;
	private Connection conn;
	private String name;
	private String password;
	
	
	public DbDAO(String driver, String url, String name,String password){
		super();
		this.driver = driver;
		this.url = url;
		this.name = name;
		this.password = password;
	}
	
	public Connection getConnection()throws Exception{
		if(conn==null){
			Class.forName(driver);
			conn = DriverManager.getConnection(url, name, password);
		}
		return conn;
	}

	public boolean insert(String sql,Object... args) throws Exception{
		PreparedStatement ps = getConnection().prepareStatement(sql);
		for(int i=0;i<args.length;i++){
			ps.setObject(i+1, args[i]);
		}
		if(ps.executeUpdate()!=1){
			return false;
		}
		return true;
	}
	
	public ResultSet query(String sql,Object...args)throws Exception{
		PreparedStatement ps = getConnection().prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
		for(int i=0;i<args.length;i++){
			ps.setObject(i+1, args[i]);
		}
		return ps.executeQuery();
	}
	
	public ResultSet query(String sql)throws Exception{
		Statement state = getConnection().createStatement();
		return state.executeQuery(sql);
	}
	
	public void closeConn() throws Exception{
		if(conn!=null&&!conn.isClosed()){
			conn.close();
		}
	}
	
	public String getDriver() {
		return driver;
	}

	public void setDriver(String driver) {
		this.driver = driver;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Connection getConn() {
		return conn;
	}

	public void setConn(Connection conn) {
		this.conn = conn;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}
