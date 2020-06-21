package com.agricolario.bean;

public class ProdottoFitosanitario {

	public ProdottoFitosanitario() {
		// TODO Auto-generated constructor stub
	}
	

public ProdottoFitosanitario(int idProdottoFitosanitario, String etichetta, String nome, double quantita,
			String forma, int temporientro, String dose, String funzione, String avversita, int tempocarenza) {
		super();
		this.idProdottoFitosanitario = idProdottoFitosanitario;
		this.etichetta = etichetta;
		this.nome = nome;
		this.quantita = quantita;
		this.forma = forma;
		this.temporientro = temporientro;
		this.dose = dose;
		this.funzione = funzione;
		this.avversita = avversita;
		this.tempocarenza = tempocarenza;
	}


public int getIdProdottoFitosanitario() {
	return idProdottoFitosanitario;
}
public void setIdProdottoFitosanitario(int idProdottoFitosanitario) {
	this.idProdottoFitosanitario = idProdottoFitosanitario;
}
public String getEtichetta() {
	return etichetta;
}
public void setEtichetta(String etichetta) {
	this.etichetta = etichetta;
}
public String getNome() {
	return nome;
}
public void setNome(String nome) {
	this.nome = nome;
}
public double getQuantita() {
	return quantita;
}
public void setQuantita(double quantita) {
	this.quantita = quantita;
}
public String getForma() {
	return forma;
}
public void setForma(String forma) {
	this.forma = forma;
}
public int getTemporientro() {
	return temporientro;
}
public void setTemporientro(int temporientro) {
	this.temporientro = temporientro;
}
public String getDose() {
	return dose;
}
public void setDose(String dose) {
	this.dose = dose;
}
public String getFunzione() {
	return funzione;
}
public void setFunzione(String funzione) {
	this.funzione = funzione;
}
public String getAvversita() {
	return avversita;
}
public void setAvversita(String avversita) {
	this.avversita = avversita;
}
public int getTempocarenza() {
	return tempocarenza;
}
public void setTempocarenza(int tempocarenza) {
	this.tempocarenza = tempocarenza;
}
private int idProdottoFitosanitario;
private String	etichetta;
private String nome;
private double quantita;
private String forma;
private int 	temporientro;
private String dose;
private String funzione;
private String avversita;
private int tempocarenza;



}
