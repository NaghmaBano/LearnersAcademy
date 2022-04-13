package com.LearnersAcademy;

import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NewStudent
 */
@WebServlet("/AddStudent")
public class AddStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Class.forName(Dbconnection.driver);
			Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
			Statement st=conn.createStatement();
			String query = "select student_seq.NEXTVAL from dual";
			ResultSet rSet=st.executeQuery(query);
			   if(rSet.next())
			      System.out.println("nextval=" +rSet.getInt(1));
			   int nextval=rSet.getInt(1);

			PreparedStatement pst=conn.prepareStatement("insert into student values(?,?,?,?)");
			pst.setInt(1,nextval);
			pst.setString(2, request.getParameter("fname"));
			pst.setString(3, request.getParameter("email"));
			pst.setString(4, request.getParameter("subject"));
			System.out.println(pst);
			int x= pst.executeUpdate();
			if(x!=0)
			{
				System.out.println("data submited");
			}
			else
			{
				System.out.println("error");
			}
			pst.close();
            conn.close();
  
            // Redirect the response to success page
            response.sendRedirect("studentlist.jsp");
		} catch (Exception e) {
		e.printStackTrace();
		}

	}

}
