package com.shop.domain;

public class OrderDetailVO {

	private int orderDrtailsNum;
	private String orderId;
	private int gdsNum;
	private int cartStock;
	
	public int getOrderDrtailsNum() {
		return orderDrtailsNum;
	}
	public void setOrderDrtailsNum(int orderDrtailsNum) {
		this.orderDrtailsNum = orderDrtailsNum;
	}
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public int getGdsNum() {
		return gdsNum;
	}
	public void setGdsNum(int gdsNum) {
		this.gdsNum = gdsNum;
	}
	public int getCartStock() {
		return cartStock;
	}
	public void setCartStock(int cartStock) {
		this.cartStock = cartStock;
	}
}
