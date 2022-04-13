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
 * Servlet implementation class AddSubject
 */
@WebServlet("/AddSubject")
public class AddSubject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			Class.forName(Dbconnection.driver);
			Connection conn=DriverManager.getConnection(Dbconnection.url, Dbconnection.userName, Dbconnection.password);
			Statement st=conn.createStatement();
			String query = "select subject_seq.NEXTVAL from dual";
			ResultSet rSet=st.executeQuery(query);
			   if(rSet.next())
			      System.out.println("nextval=" +rSet.getInt(1));
			   int nextval=rSet.getInt(1);

			PreparedStatement pst=conn.prepareStatement("insert into subject values(?,?,?)");
			pst.setInt(1,nextval);
			pst.setString(2, request.getParameter("subject"));
			pst.setString(3, request.getParameter("time"));
			System.out.println(pst);
			int x= pst.executeUpdate();
			if(x!=0)
			{
				System.out.println("data submited");
			}
			else
			{
				System.out.println("Enter valid details");
			}
			pst.close();
            conn.close();
  
            // Redirect the response to success page
            response.sendRedirect("subject.jsp");
		} catch (Exception e) {
		e.printStackTrace();
		}

	}

}
