package com.icia.web.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.icia.web.dao.TravelDao;
import com.icia.web.model.Travel;

@Service("travelService")
public class TravelService {
	private static Logger logger = LoggerFactory.getLogger(UserService2.class);
	
	@Autowired
	private TravelDao travelDao;
	
	public Travel userSelect3(String userId2) {
		Travel travel = null;
		
		try {
			travel = travelDao.userSelect3(userId2);
		}
		catch(Exception e) {
			logger.error("[TravelService] userSelect3 Exception",e);
		}
		return travel;
	}
	
}
