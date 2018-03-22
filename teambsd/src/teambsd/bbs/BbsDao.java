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
			sql.append("SELECT * FROM bbs order by sys_modified_date desc");
			rs = stmt.executeQuery(sql.toString());

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
	public Bbs detail(String param_id) {
		try {
			con = ConnectionUtil.getConnection();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}		
		Statement stmt = null;
		ResultSet rs = null;
		try {
			stmt = con.createStatement();
			StringBuffer sql = new StringBuffer();
			sql.append("SELECT * FROM bbs where id =" + param_id);
			System.out.println(sql.toString());
			rs = stmt.executeQuery(sql.toString());

			if(rs.next()) {
				int id = rs.getInt("id");
				int id_user = rs.getInt("id_user");
				String content = rs.getString("content");
				Timestamp sys_added_date = rs.getTimestamp("sys_added_date");
				Timestamp sys_modified_date = rs.getTimestamp("sys_modified_date");
				return new Bbs(id, id_user, content, sys_added_date, sys_modified_date);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
//			ConnectionUtil.Close();
		}

		return null;
	}
	

	public void update(String param_id, String param_content) {
		try {
			con = ConnectionUtil.getConnection();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}		
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			StringBuffer sql = new StringBuffer();

			sql.append("UPDATE `bsg`.`bbs` SET `content` = '" + param_content + "' WHERE `id` = " + param_id);
			System.out.println(sql.toString());
			stmt.executeUpdate(sql.toString());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
//			ConnectionUtil.Close();
		}		
	}
	
	public void write(String id_user, String content) {
		try {
			con = ConnectionUtil.getConnection();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}		
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			StringBuffer sql = new StringBuffer();
			sql.append("INSERT INTO `bsg`.`bbs` (`id_user`,	`content`) VALUES ("+id_user+", '" + content + "')");
			System.out.println(sql.toString());
			stmt.executeUpdate(sql.toString());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
//			ConnectionUtil.Close();
		}		
	}
	
	public void delete(String param_id) {
		try {
			con = ConnectionUtil.getConnection();
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}		
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			StringBuffer sql = new StringBuffer();
			sql.append("DELETE FROM bbs where id =" + param_id);
			System.out.println(sql.toString());
			stmt.executeUpdate(sql.toString());

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
//			ConnectionUtil.Close();
		}		
	}
	
}
