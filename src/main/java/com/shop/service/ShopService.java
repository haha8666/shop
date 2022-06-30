package com.shop.service;

import java.util.List;

import com.shop.domain.CartListVO;
import com.shop.domain.CartVO;
import com.shop.domain.GoodsViewVO;
import com.shop.domain.OrderDetailVO;
import com.shop.domain.OrderListVO;
import com.shop.domain.OrderVO;
import com.shop.domain.ReplyListVO;
import com.shop.domain.ReplyVO;

public interface ShopService {
	
	public List<GoodsViewVO> list(int cateCode, int level) throws Exception;

	public GoodsViewVO goodsView(int gdsNum) throws  Exception;
	
	public void registReply(ReplyVO reply) throws Exception;
	
	public List<ReplyListVO> replyList(int gdsNum) throws Exception;
	
	public void deleteReply(ReplyVO reply) throws Exception;
	
	public String idCheck(int repNum) throws Exception;
	
	public void modifyReply(ReplyVO reply) throws Exception;
	
	public void addCart(CartVO cart) throws Exception;
	
	public List<CartListVO> cartList(String userId) throws Exception;
	
	public void deleteCart(CartVO cart) throws Exception;
	
	public void orderInfo(OrderVO order) throws Exception;
	
	public void orderInfo_Details(OrderDetailVO orderDetail) throws Exception;
	
	public void cartAllDelete(String userId) throws Exception;
	
	public List<OrderVO> orderList(OrderVO order) throws Exception;
	
	public List<OrderListVO> orderView(OrderVO order) throws Exception;

	public List<GoodsViewVO> allList() throws Exception;
}
