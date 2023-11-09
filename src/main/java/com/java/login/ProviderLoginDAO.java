package com.java.login;

public interface ProviderLoginDAO {
	public String validateOtp(ProviderLogin provider);
	public String login(ProviderLogin provider);
}
