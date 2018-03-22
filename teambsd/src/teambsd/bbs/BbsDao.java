package teambsd.bbs;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;

import teambsd.util.ConnectionUtil;

public class BbsDao {
	Connection con;
	
	public BbsDao() {

	}
	public ArrayList<Bbs> list() {
		try {
			con = ConnectionUtil.getConnection();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}		
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		
		try {
			stmt = con.createStatement();
			StringBuffer sql = new StringBuffer();
			sql.append("SELECT * FROM bsg.bbs;");
			rs = stmt.executeQuery(sql.toString());
			System.out.println(sql.toString());
			while(rs.next()) {
				int id = rs.getInt("id");
				int id_user = rs.getInt("id_user");
				String content = rs.getString("content");
				Timestamp sys_added_date = rs.getTimestamp("sys_added_date");
				Timestamp sys_modified_date = rs.getTimestamp("sys_modified_date");
				list.add(new Bbs(id, id_user, content, sys_added_date, sys_modified_date));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
//			ConnectionUtil.Close();
		}
		return list;
	}
	public void detail(int id) {
	}

	public void update() {
		
	}
	
	public void create() {
		
	}
	public void delete() {
	}
	
}
