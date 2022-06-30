package com.shop.persistence;

import java.util.List;

import com.shop.domain.CategoryVO;
import com.shop.domain.GoodsVO;
import com.shop.domain.GoodsViewVO;
import com.shop.domain.MemberVO;
import com.shop.domain.OrderListVO;
import com.shop.domain.OrderVO;
import com.shop.domain.ReplyListVO;

public interface AdminDAO {
	
	//카테고리
	public List<CategoryVO> category() throws Exception;
	
	//상품등록
	public void register(GoodsVO vo) throws Exception;

	public List<GoodsViewVO> goodslist() throws Exception;
	
	public GoodsViewVO goodsView(int gdsNum) throws Exception;
	
	public void goodsModify(GoodsVO vo) throws Exception;
	
	public void goodsDelete(int gdsNum) throws Exception;
	
	public List<OrderVO> orderList() throws Exception;
	
	public List<OrderListVO> orderView(OrderVO order) throws Exception;
	
	public void delivery(OrderVO order) throws Exception;
	
	public void changeStock(GoodsVO goods) throws Exception;
	
	public List<ReplyListVO> allReply() throws Exception;
	
	public void deleteReply(int repNum) throws Exception;

	public List<MemberVO> userList() throws Exception;
	
}
