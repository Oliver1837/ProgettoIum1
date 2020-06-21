package com.agricolario.bean;

public class Magazzino {

	public Magazzino() {
		// TODO Auto-generated constructor stub
	}
	private int idMagazzino;
	private int idAzienda;
	private int idProdottoFitosanitario;
	private double quantita;
	
	
	
	
	
	
	
	public Magazzino(int idMagazzino, int idAzienda, int idProdottoFitosanitario, double quantita) {
		super();
		this.idMagazzino = idMagazzino;
		this.idAzienda = idAzienda;
		this.idProdottoFitosanitario = idProdottoFitosanitario;
		this.quantita = quantita;
	}
	public double getQuantita() {
		return quantita;
	}
	public void setQuantita(double quantita) {
		this.quantita = quantita;
	}
	public int getIdMagazzino() {
		return idMagazzino;
	}
	public void setIdMagazzino(int idMagazzino) {
		this.idMagazzino = idMagazzino;
	}
	public int getIdAzienda() {
		return idAzienda;
	}
	public void setIdAzienda(int idAzienda) {
		this.idAzienda = idAzienda;
	}
	public int getIdProdottoFitosanitario() {
		return idProdottoFitosanitario;
	}
	public void setIdProdottoFitosanitario(int idProdottoFitosanitario) {
		this.idProdottoFitosanitario = idProdottoFitosanitario;
	}
	

}
