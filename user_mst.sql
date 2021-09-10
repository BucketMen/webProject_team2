select
			m.user_id,
			s.user_pwd,
			s.block
		from
			user_mst m
			left outer join user_mst s on(s.user_id = m.user_id and s.user_pwd = '1234')
		where
			m.user_id = 'son';