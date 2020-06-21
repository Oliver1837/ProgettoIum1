package com.agricolario.bean;

import java.util.Date;

public class Trattamento {
private String coltura;
private Date datInzio;
private double superficie;
private String nomeProdotto;
private float quantita;
private String unita;
private String avversita;
private String note;
	
	public Trattamento() {
		// TODO Auto-generated constructor stub
	}

	public String getColtura() {
		return coltura;
	}
	
	
	
	

	public Trattamento(String coltura, Date datInzio, double superficie, String nomeProdotto, float quantita,
			String unita, String avversita, String note) {
		super();
		this.coltura = coltura;
		this.datInzio = datInzio;
		this.superficie = superficie;
		this.nomeProdotto = nomeProdotto;
		this.quantita = quantita;
		this.unita = unita;
		this.avversita = avversita;
		this.note = note;
	}

	public void setColtura(String coltura) {
		this.coltura = coltura;
	}

	public Date getDatInzio() {
		return datInzio;
	}

	public void setDatInzio(Date datInzio) {
		this.datInzio = datInzio;
	}

	public double getSuperficie() {
		return superficie;
	}

	public void setSuperficie(double superficie) {
		this.superficie = superficie;
	}

	public String getNomeProdotto() {
		return nomeProdotto;
	}

	public void setNomeProdotto(String nomeProdotto) {
		this.nomeProdotto = nomeProdotto;
	}

	public float getQuantita() {
		return quantita;
	}

	public void setQuantita(float quantita) {
		this.quantita = quantita;
	}

	public String getUnita() {
		return unita;
	}

	public void setUnita(String unita) {
		this.unita = unita;
	}

	public String getAvversita() {
		return avversita;
	}

	public void setAvversita(String avversita) {
		this.avversita = avversita;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	@Override
	public String toString() {
		return "Trattamento [coltura=" + coltura + ", datInzio=" + datInzio + ", superficie=" + superficie
				+ ", nomeProdotto=" + nomeProdotto + ", quantita=" + quantita + ", unita=" + unita + ", avversita="
				+ avversita + ", note=" + note + "]";
	}

	
	
}
