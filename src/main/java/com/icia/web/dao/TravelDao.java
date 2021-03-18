package com.icia.web.dao;

import org.springframework.stereotype.Repository;

import com.icia.web.model.Travel;


@Repository("TravelDao")
public interface TravelDao {

	public Travel userSelect3(String userId2);
}
