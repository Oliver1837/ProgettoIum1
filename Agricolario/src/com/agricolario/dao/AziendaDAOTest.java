package com.agricolario.dao;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.agricolario.bean.Azienda;
import com.agricolario.functionality.ParseDate;

class AziendaDAOTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void testInsert() {
		Azienda azienda = new Azienda();
		azienda.setNomeAzienda("ok");
		azienda.setCittà("ok");
		azienda.setDataFondazione(ParseDate.parseDateUtil("30/08/1955"));
		azienda.setCap("201828");
		azienda.setIndirizzo("fadjfhak");
		new AziendaDAO().insert(azienda);
	}

}
