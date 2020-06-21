package com.agricolario.show;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.dao.RegistroFitosanitarioDAO;

/**
 * Servlet implementation class showScadenze
 */
@WebServlet("/showScadenze")
public class showScadenze extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public showScadenze() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		
		
		
		
		
		
		RegistroFitosanitarioDAO dao= new RegistroFitosanitarioDAO();
		//RegistroFitosanitario reg = dao.getRegistro(1);
		ArrayList<RegistroFitosanitario> lista = dao.getAllRegistro(1);
		
		request.setAttribute("listaRegistro", lista);
		
			
		
		
		getServletContext().getRequestDispatcher("/view/scad.jsp").forward(request, response);	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
