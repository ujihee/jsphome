package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.User6DTO;

public class User6DAO {
	
	private final static User6DAO INSTANCE = new User6DAO();
	public static User6DAO getInstance() {
		return INSTANCE;
	}
	private User6DAO() {}
	
	public void insertUser6(User6DTO dto) {}
	public User6DTO selectUser6(int seq) {
		return null;
	}
	public List<User6DTO> selectAllUser6() {
		
		List<User6DTO> dtoList = new ArrayList<User6DTO>();
		
		try {
			Context ctx = (Context) new InitialContext().lookup("java:comp/env");
			DataSource ds = (DataSource) ctx.lookup("jdbc/tmfflavndn");
			
			Connection conn = ds.getConnection();
			Statement stmt = conn.createStatement();
			String sql = "select * from user6";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				User6DTO dto = new User6DTO();
				dto.setSeq(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setGender(rs.getString(3));
				dto.setAge(rs.getInt(4));
				dto.setAddr(rs.getString(5));
				dtoList.add(dto);
			}
			rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}
	public void updateUser6(User6DTO dto) {}
	public void deleteUser6(int seq) {}

}
