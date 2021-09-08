package com.koreadeal.web.DAO;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.koreadeal.web.beans.UserBean;
import com.koreadeal.web.model.JoinModel;

public interface JoinDao {

	public int idCheck(String join_id);
	public int joinInsert(UserBean bean);
	
<<<<<<< HEAD
		
=======
>>>>>>> c60aa342848d166dc9fa2749758ff6473ba15169
}
