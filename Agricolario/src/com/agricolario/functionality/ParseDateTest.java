package com.agricolario.functionality;

import static org.junit.jupiter.api.Assertions.*;

import java.util.Date;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ParseDateTest {

	@BeforeEach
	void setUp() throws Exception {
	}

	@AfterEach
	void tearDown() throws Exception {
	}

	@Test
	final void testParseDateUtil() {
		String data = "1995-08-30";
    
    	
    	
    	
    	
    	
    	
    	
    	
    	
    	
		Date d	=	ParseDate.parseDateUtil(data);
	    assertNotNull(d);
	    System.out.println(d.toString());
		
		
	}


}
