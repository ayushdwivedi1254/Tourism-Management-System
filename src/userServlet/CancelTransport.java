package userServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import connection.ConnectionString;

/**
 * Servlet implementation class CancelTransport
 */
@WebServlet("/CancelTransport")
public class CancelTransport extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String transportType = request.getParameter("transportType");
		String vehicleType = request.getParameter("vehicleType");
		String vehicleName = request.getParameter("vehicleName");
		String packagename = request.getParameter("packagename");
		String place = request.getParameter("place");
		HttpSession session = request.getSession();
		
		try{
			Connection con=ConnectionString.getCon();//getting db connection
			PreparedStatement ps = con.prepareStatement("delete from booktransport where transportType='"+transportType+"'and vehicleType='"+vehicleType+"'and vehicleName='"+vehicleName+"'and packagename='"+packagename+"'and place='"+place+"'and email='"+session.getAttribute("email")+"'");
			ps.executeUpdate();
			response.sendRedirect("User/ModifyTransport.jsp");
			
			} catch (Exception e) {
			e.printStackTrace();
			}
	}

}
