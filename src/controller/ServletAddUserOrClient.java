package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClientDao;
import model.Client;
import service.Login;

/**
 * Cette Servlet g�re les op�rations du CRUD, en faisant appel aux classes
 * concern�es.
 */
@WebServlet({ "/addConseiller", "/addClient", "/deleteClient", "/editClient" })
public class ServletAddUserOrClient extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String address;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ServletAddUserOrClient() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String path = request.getRequestURI();
		ClientDao dao = new ClientDao();
		if (path.contains("addClient")) {
			Client cl = new Client(
					request.getParameter("nom"), 
					request.getParameter("prenom"), 
					request.getParameter("adresse"), 
					request.getParameter("ville"), 
					Integer.valueOf(request.getParameter("codePostal")), 
					request.getParameter("phone"), 
					true
					);
			
				System.out.println("test dans Servlet : "+cl);
			dao.create(cl);
			address = "/WEB-INF/index.jsp";
		}
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(address);
		dispatcher.forward(request, response);

	}

}
