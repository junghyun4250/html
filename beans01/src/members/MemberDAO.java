package members;

import java.sql.*;
import java.util.ArrayList;
public class MemberDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "jsp", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public MemberDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MemberDTO> memberList(){
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		try {
			String sql = "select * from members";
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO d = new MemberDTO();
				d.setId(rs.getString("id"));
				d.setPwd(rs.getString("pwd"));
				d.setName(rs.getString("name"));
				d.setAddr(rs.getString("addr"));
				d.setTel(rs.getString("tel"));
				list.add(d);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int loginCheck(MemberDTO m) {
		String sql = "select * from members where id=?";
		int msg = 0;
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, m.getId());
			rs = ps.executeQuery();
			if(rs.next()) {
				if(m.getPwd().equals(rs.getString("pwd"))) {
					msg = 0;
				}else {
					msg = 1;
				}
			} else {
				msg = 2;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return msg;
	}
	
	public ResultSet memberInfo() {
		String sql = "select * from members";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	
	public ArrayList<MemberDTO> modifyInfo(String id) {
		MemberDTO m = new MemberDTO();
		ArrayList<MemberDTO> a = new ArrayList<MemberDTO>();
		String sql = "select * from members where id=?";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setAddr(rs.getString("addr"));
				m.setTel(rs.getString("tel"));
			}
			a.add(m);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;	
	}
	
	public void deleteInfo(String id) {
		String sql = "delete from members where id = ?";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<MemberDTO> modify(String id) {
		MemberDTO m = new MemberDTO();
		ArrayList<MemberDTO> a = new ArrayList<MemberDTO>();
		String sql = "select * from members where id=?";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				m.setName(rs.getString("name"));
				m.setAddr(rs.getString("addr"));
				m.setTel(rs.getString("tel"));
			}
			a.add(m);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return a;	
	}
	
	public void modi(MemberDTO list, String id) {
		String sql = "update members set name=?,addr=?,tel=? where id=?";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, list.getName());
			ps.setString(2, list.getAddr());
			ps.setString(3, list.getTel());
			ps.setString(4, id);
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void register(MemberDTO list) {
		String sql = "insert into members values(?,?,?,?,?)";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1,list.getId());
			ps.setString(2,list.getPwd());
			ps.setString(3,list.getName());
			ps.setString(4,list.getAddr());
			ps.setString(5,list.getTel());
			rs = ps.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}














