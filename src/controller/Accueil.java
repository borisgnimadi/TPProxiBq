package controller;

import java.io.IOException;
import java.net.http.HttpRequest;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ClientDao;
import model.User;
import service.Login;

/**
 * Servlet implementation class Accueil
 */
@WebServlet({ "/accueilAppli", "/login", "/deleteUser", "/addUser", "/editUser", "/displayUser", "/Servlet" })
public class Accueil extends HttpServlet {
	private static final long serialVersionUID = 1L;

	String address;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Accueil() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ClientDao dao = new ClientDao();
		User user = dao.findByUsername("B");
		request.setAttribute("user", user);
		System.out.println(user);
		String path = request.getRequestURI();

		if (path.contains("login")) {
			address = "/login.jsp";
		}
		if (path.contains("accueilAppli")) {
			address = "/WEB-INF/index.jsp";
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(address);
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String path = request.getRequestURI();

		if (path.contains("login") && request.getParameter("email") != null) { // si le user a tent� de se logger
			boolean isLogged = Login.login(request.getParameter("email"), request.getParameter("password"));
			System.out.println(isLogged + "test login");
			if (isLogged) {
				HttpSession session = request.getSession();
				session.setAttribute("isLogged", isLogged);
				address = "/WEB-INF/index.jsp";
			} else {
				String errorLogin = "Mot de passe incorrect ! ";
				request.setAttribute("errorLogin", errorLogin);
				address = "/login.jsp";
			}
		}

		ClientDao dao = new ClientDao();
		if (path.contains("addUser")) {
			User cl = new User(8, request.getParameter("name"), request.getParameter("firstname"));
			System.out.println(cl);
			dao.create(cl);
			address = "/WEB-INF/index.jsp";
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

}
