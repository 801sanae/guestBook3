package com.hanains.guestbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hanains.guestbook.dao.GuestBookDao;
import com.hanains.guestbook.vo.GuestBookVo;


@Service
public class GuestBookService {

	@Autowired
	private GuestBookDao dao;
	
	public List<GuestBookVo> getlist() {
		List<GuestBookVo> list = dao.getlist();
		return list;
	}

	public void insert(GuestBookVo vo) {
		dao.insert(vo);
	}

	public void delete(GuestBookVo vo) {
		dao.delete(vo);
	}

}
