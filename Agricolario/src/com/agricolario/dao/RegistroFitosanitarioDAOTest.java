package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import java.util.ArrayList;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Trattamento;

class RegistroFitosanitarioDAOTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void test() {
	
	
	
	RegistroFitosanitarioDAO dao= new RegistroFitosanitarioDAO();
	//RegistroFitosanitario reg = dao.getRegistro(1);
	ArrayList<RegistroFitosanitario> lista = dao.getAllRegistro(1);
    for (RegistroFitosanitario registroFitosanitario : lista) {
		System.out.println(registroFitosanitario.toString());
	}
	}
	

}
