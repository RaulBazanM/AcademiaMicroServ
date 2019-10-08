package com.everis.springcloudexchange.responses;

import com.everis.springcloudexchange.model.ExchangeValue;

public class ExchangeValueResponse {
	
	private boolean succesful;
	private String message;
	private ExchangeValue value;
	
	public boolean isSuccesful() {
		return succesful;
	}
	public void setSuccesful(boolean succesful) {
		this.succesful = succesful;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public ExchangeValue getValue() {
		return value;
	}
	public void setValue(ExchangeValue value) {
		this.value = value;
	}
	
	

}
