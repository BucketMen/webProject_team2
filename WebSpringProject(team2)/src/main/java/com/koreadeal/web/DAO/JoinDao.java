package com.koreadeal.web.DAO;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.koreadeal.web.model.JoinModel;

public interface JoinDao {

	public int idCheck(String join_id);
	
		
}
