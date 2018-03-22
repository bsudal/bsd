package teambsd.bbs;

import java.sql.Timestamp;

public class Bbs {
	protected int id;
	protected int id_user;
	protected String content;
	protected Timestamp sys_added_date;
	protected Timestamp sys_modified_date;

	public Bbs(int id, int id_user, String content, Timestamp sys_added_date, Timestamp sys_modified_date) {
		super();
		this.id = id;
		this.id_user = id_user;
		this.content = content;
		this.sys_added_date = sys_added_date;
		this.sys_modified_date = sys_modified_date;
	}
	public int getId() { return id; }
	public void setId(int id) {	this.id = id; }
	public int getId_user() { return id_user; }
	public void setId_user(int id_user) { this.id_user = id_user; }
	public String getContent() { return content; }
	public void setContent(String content) { this.content = content; }
	public Timestamp getSys_added_date() { return sys_added_date; }
	public void setSys_added_date(Timestamp sys_added_date) { this.sys_added_date = sys_added_date; } 
	public Timestamp getSys_modified_date() { return sys_modified_date; }
	public void setSys_modified_date(Timestamp sys_modified_date) { this.sys_modified_date = sys_modified_date; }
}
