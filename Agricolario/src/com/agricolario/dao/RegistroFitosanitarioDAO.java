package com.agricolario.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;

import com.agricolario.bean.RegistroFitosanitario;
import com.agricolario.bean.Trattamento;
import com.agricolario.bean.Utente;
import com.agricolario.connessione.Connessione;
import com.agricolario.functionality.ParseDate;

public class RegistroFitosanitarioDAO {
	  private Connessione connessione;
	public RegistroFitosanitarioDAO() {
		// TODO Auto-generated constructor stub
		connessione= new Connessione();

	}
	public boolean insert(RegistroFitosanitario rf) {
		
		String insertSql= "insert into registrofitosanitario (coltura,dataInizio,superficie,nomeprodotto,quantitaProdotto,avversita,note) value(?,?,?,?,?,?,?);";
	// 	PreparedStatement ps = con.prepareStatement(insertSql);
	
	    return true;
		
		
		
	//	return false;
	}
	public RegistroFitosanitario getRegistro(int id) {
		
		String insertSql= "\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"SELECT * FROM registrofitosanitario JOIN trattamento  ON registrofitosanitario.idregistrofitosanitario = trattamento.idregistro where registrofitosanitario.idregistrofitosanitario=? ORDER BY registrofitosanitario.DataCreazione DESC;";
	// 	PreparedStatement ps = con.prepareStatement(insertSql);
	
		Connection con= connessione.getConn();
	 	ResultSet result;
		
		
	    	try {
				PreparedStatement ps = con.prepareStatement(insertSql);
			    ps.setInt(1, id);
				result=ps.executeQuery();
				RegistroFitosanitario registro=new RegistroFitosanitario();
				ArrayList<Trattamento> trattamenti = new ArrayList<Trattamento>();
				boolean data=true;
				Date dataCreazione = new Date();
				while(result.next()) {
					
					if(data) {
						
						dataCreazione = result.getDate("dataCreazione");
						data=false;
					}
					
					
					
					Trattamento t= new Trattamento();
					t.setColtura(result.getString("coltura"));
					t.setNomeProdotto(result.getString("nomeprodotto"));
					t.setAvversita(result.getString("avversita"));
					t.setUnita("unitaDiMisuraProdotto");
					t.setNote(result.getString("note"));
					t.setQuantita(result.getFloat("quantitaProdotto"));
					t.setSuperficie(result.getDouble("superficieInEttari"));
					t.setDatInzio(result.getDate("dataInizio"));
					trattamenti.add(t);
				
				
				
				}
				registro.setTrattamenti(trattamenti);
				registro.setDataCreazione(dataCreazione);
			
				return registro; 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
			
    
		
		
		
		
	//	return false;
	}
	
	
	public ArrayList<RegistroFitosanitario> getAllRegistro(int idUtente){
		
	/*	SELECT * FROM (registrofitosanitario JOIN trattamento  ON registrofitosanitario.idregistrofitosanitario = trattamento.idregistro)
		 JOIN compilazioneregistro  on registrofitosanitario.idregistrofitosanitario = compilazioneregistro.idregistrofitosanitario
		 JOIN utente on utente.idutente = compilazioneregistro.idutente  where utente.idutente=1 ;
		*/
		
		String insertSql= " SELECT * FROM  (compilazioneregistro   JOIN utente on utente.idutente = compilazioneregistro.idutente) join registrofitosanitario\r\n" + 
				" \r\n" + 
				" on registrofitosanitario.idregistrofitosanitario = compilazioneregistro.idregistrofitosanitario where utente.idutente=?  ORDER BY registrofitosanitario.DataCreazione DESC\r\n" + 
				" ;";
	// 	PreparedStatement ps = con.prepareStatement(insertSql);
	
		Connection con= connessione.getConn();
	 	ResultSet result;
		
		
	    	try {
				PreparedStatement ps = con.prepareStatement(insertSql);
			    ps.setInt(1, idUtente);
				result=ps.executeQuery();
				
				
				ArrayList<Integer> idRegistro = new ArrayList<Integer>();
				while(result.next()) {
					idRegistro.add(result.getInt("idregistrofitosanitario"));
					
				}
				
				
				ArrayList<RegistroFitosanitario> listaRegistri= new ArrayList<RegistroFitosanitario>();
				for (Integer integer : idRegistro) {
					
					RegistroFitosanitario reg= new RegistroFitosanitarioDAO().getRegistro(integer);
					reg.setIdRegistroFitosanitario(integer);
					listaRegistri.add(reg);
					
					
				}
			
				return listaRegistri; 
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
				return null;
			}
		
	}
	
	
	/*ottenere il registro del delegato 
	 * 
	 *  SELECT * FROM  (delega   JOIN utente on utente.idutente = delega.idutente) join registrofitosanitario
 
 		on registrofitosanitario.idregistrofitosanitario = delega.idregistrofitosanitario
 
 		where utente.idutente=6;
	*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
