package kr.ac.dju.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/studentSearch")
public class StudentSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDTO studentDTO;
	private StudentDAO studentDAO;
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;

	public StudentSearchServlet() {
		studentDTO = new StudentDTO();
		studentDAO = new StudentDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("<h1>�л��˻�</h>");
		String name = request.getParameter("name");
		out.print("�̸� :" + name + "<br>");
		conn = studentDAO.getConnection();
		if (conn == null) {
			out.print("����Ŭ�������<br>");
		} else {
			out.print("����Ŭ���Ἲ��<br>");
			pstmt = studentDAO.studentSearch(name);
			rs = studentDAO.executeStudentQuery();
			studentDTO = studentDAO.studentExecuteWhile(rs);

			if (name.equals(studentDTO.getName())) {
				out.print(studentDTO.getNo() + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + studentDTO.getAge()
						+ "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + studentDTO.getName() + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
						+ studentDTO.getHak() + "<br>");
			} else {
				out.print("ã���̸��� �����ϴ�.");
			}

			studentDAO.studentClose();
			out.print("<a href='template.jsp'>��������</a>");
		}

	}

}
