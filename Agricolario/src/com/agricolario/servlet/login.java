package com.agricolario.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.agricolario.bean.Azienda;
import com.agricolario.bean.Utente;
import com.agricolario.dao.AziendaDAO;
import com.agricolario.dao.UtenteDAO;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email,password;
		 email= request.getParameter("email");
		 password= request.getParameter("password");
		 UtenteDAO userDao = new UtenteDAO();
			Utente user=userDao.selectUser(email);
			if(user!=null) {
			/*	HttpSession ssn= request.getSession();
				ssn.setAttribute("user",user);
				ssn.setAttribute("loggato",true);

				*/
				System.out.println(user.toString());
				Azienda azienda=new AziendaDAO().selectAzienda(user.getId());
				System.out.println(azienda.toString());
			}else {
				
				//pagina di errore o messaggio di errore
			}
			
	//	response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
