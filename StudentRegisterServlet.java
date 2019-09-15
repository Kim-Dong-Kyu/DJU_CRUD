package kr.ac.dju.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/studentRegister")
public class StudentRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDTO studentDTO;
	private StudentDAO studentDAO;
	private Connection conn;
	private int cnt;
	private PreparedStatement pstmt;

	public StudentRegisterServlet() {
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
		out.print("<h1>�л����</h>");
		studentDTO.setNo(Integer.parseInt(request.getParameter("no")));
		studentDTO.setAge(request.getParameter("age"));
		studentDTO.setName(request.getParameter("name"));
		studentDTO.setHak(request.getParameter("hak"));
		out.print("<br>" + studentDTO.getNo() + ":���۹�ȣ" + studentDTO.getAge() + ":���۳���" + studentDTO.getName() + ":�����̸�"
				+ studentDTO.getHak() + ":�����й�<br>");
		conn = studentDAO.getConnection();
		if (conn == null) {
			out.print("����Ŭ�������<br>");
		} else {
			out.print("����Ŭ���Ἲ��<br>");
			pstmt = studentDAO.studentRegister(studentDTO);
			cnt = studentDAO.executeStudent(pstmt);
			out.print(cnt + "�� �л��� ��ϵǾ����ϴ�.");
			out.print("<a href='template.jsp'>��������</a>");
		}

	}

}
