package com.everis.springcloudconversion.responses;

import java.math.BigDecimal;

import com.everis.springcloudconversion.model.ExchangeValue;

public class CurrencyConversionResponse {
	
	private boolean succesful;
	private String message;
	private BigDecimal total;
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
	public BigDecimal getTotal() {
		return total;
	}
	public void setTotal(BigDecimal total) {
		this.total = total;
	}
	public ExchangeValue getValue() {
		return value;
	}
	public void setValue(ExchangeValue value) {
		this.value = value;
	}

}
