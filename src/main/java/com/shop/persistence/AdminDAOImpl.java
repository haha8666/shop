package com.shop.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.shop.domain.CategoryVO;
import com.shop.domain.GoodsVO;
import com.shop.domain.GoodsViewVO;
import com.shop.domain.MemberVO;
import com.shop.domain.OrderListVO;
import com.shop.domain.OrderVO;
import com.shop.domain.ReplyListVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.shop.mappers.adminMapper";
	
	@Override
	public List<CategoryVO> category() throws Exception {
		return sql.selectList(namespace + ".category");
	}

	@Override
	public void register(GoodsVO vo) throws Exception {
		sql.insert(namespace + ".register", vo);
	}
	
	@Override
	public List<GoodsViewVO> goodslist() throws Exception {
		return sql.selectList(namespace + ".goodslist");
	}
	
	@Override
	public GoodsViewVO goodsView(int gdsNum) throws Exception {
		return sql.selectOne(namespace + ".goodsView", gdsNum);
	}
	
	@Override
	public void goodsModify(GoodsVO vo) throws Exception {
		sql.update(namespace + ".goodsModify", vo);
	}
	
	@Override
	public void goodsDelete(int gdsNum) throws Exception{
		sql.delete(namespace + ".goodsDelete", gdsNum);
	}
	
	@Override
	public List<OrderVO> orderList() throws Exception{
		return sql.selectList(namespace + ".orderList");
	}

	@Override
	public List<OrderListVO> orderView(OrderVO order) throws Exception{
		return sql.selectList(namespace + ".orderView", order);
	}
	
	@Override
	public void delivery(OrderVO order) throws Exception{
		sql.update(namespace + ".delivery", order);
	}
	
	@Override
	public void changeStock(GoodsVO goods) throws Exception{
		sql.update(namespace + ".changeStock", goods); 
	}
	
	@Override
	public List<ReplyListVO> allReply() throws Exception{
		return sql.selectList(namespace + ".allReply");
	}
	
	@Override
	public void deleteReply(int repNum) throws Exception{
		sql.delete(namespace + ".deleteReply", repNum);
	}
	
	@Override
	public List<MemberVO> userList() throws Exception{
		return sql.selectList(namespace + ".userList");
	}
}
