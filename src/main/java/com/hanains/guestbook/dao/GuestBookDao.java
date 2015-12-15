package com.hanains.guestbook.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hanains.guestbook.vo.GuestBookVo;

@Repository
public class GuestBookDao {

	@Autowired
	private SqlSession sqlSession;
	
	//TODO 
	public void insert(GuestBookVo vo){
		sqlSession.insert("guestbook.insert", vo);
	}
	
	//TODO
	public void delete(GuestBookVo vo){
		sqlSession.delete("guestbook.delete", vo);
	}
	
	//TODO
	public List<GuestBookVo> getlist(){
		List<GuestBookVo> list = sqlSession.selectList("guestbook.getlist");
		return list;
	}
}
