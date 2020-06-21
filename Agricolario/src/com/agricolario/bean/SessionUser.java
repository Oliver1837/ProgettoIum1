package com.agricolario.bean;

public class SessionUser {

	public SessionUser() {
		// TODO Auto-generated constructor stub
	}
  public SessionUser(Utente user, String idSession) {
		super();
		this.user = user;
		this.idSession = idSession;
	}
public Utente getUser() {
	return user;
}
public void setUser(Utente user) {
	this.user = user;
}
public String getIdSession() {
	return idSession;
}
public void setIdSession(String idSession) {
	this.idSession = idSession;
}
private Utente user;
  private String idSession;
}
