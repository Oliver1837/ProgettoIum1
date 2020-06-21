package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;

public class ProdottoFitosanitarioDAO {
	   private Connessione connessione;
	public ProdottoFitosanitarioDAO() {
		connessione= new Connessione();
	}

	
	
	
	//get tempo di carenza
	
	public int getTempoCarenza(String nomeProdotto) {
		
		String sql= "select tempocarenza from prodottofitosanitario where nome= ?;";

		 Connection con= connessione.getConn();
		 	ResultSet result;
			try {
				
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setString(1, nomeProdotto);
                result	=   ps.executeQuery();
			    int carenza=0;
                while(result.next()) {	
				 carenza= result.getInt("tempocarenza");
				}
			
				
				
		    	 return carenza;	
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				System.out.println(e.getErrorCode()+"\n"+e.getMessage());
				return 0;
			}finally {
				if(connessione!=null) {
					
					connessione.closeConn();
				}
			}	
	}
	
	
	
	
	
	
	
	
	
	
}
