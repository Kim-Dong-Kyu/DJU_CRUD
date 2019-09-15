package kr.ac.dju.student;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class StudentDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private String sql;
	private int cnt;
	private ResultSet rs;
	private StudentDTO studentDTO;
	public StudentDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			studentDTO = new StudentDTO();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Connection getConnection() {
		try {
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:XE", "java", "java");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

	public PreparedStatement studentRegister(StudentDTO studentDTO) {
		sql = "insert into student(no,age,name,hak) values(?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, studentDTO.getNo());
			pstmt.setString(2, studentDTO.getAge());
			pstmt.setString(3, studentDTO.getName());
			pstmt.setString(4, studentDTO.getHak());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pstmt;
	}

	public PreparedStatement studentSearch(String name) {
		sql = "select no,age,name,hak from student where name=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return pstmt;
	}

	public ResultSet executeStudentQuery() {
		try {
			rs = pstmt.executeQuery();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}

	public StudentDTO studentExecuteWhile(ResultSet rs) {
		try {
			while (rs.next()) {
				studentDTO.setNo(rs.getInt("no"));
				studentDTO.setAge(rs.getString("age"));
				studentDTO.setName(rs.getString("name"));
				studentDTO.setHak(rs.getString("hak"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return studentDTO;
	}

	public int executeStudent(PreparedStatement pstmt) {
		try {
			cnt = pstmt.executeUpdate();
			studentClose();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	}

	public void studentClose() {
		try {
			pstmt.close();
			conn.close();
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
