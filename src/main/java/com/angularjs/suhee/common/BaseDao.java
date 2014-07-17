package com.angularjs.suhee.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

@Repository
public class BaseDao extends SqlMapClientDaoSupport {
	/**
	 * 
	 * <pre>
	 * SqlMapClientDaoSupport의 sqlMapClient를 자동주입하기 위한 Custom Setter 메서드
	 * 
	 * history
	 * 2012. 6. 12. 김민영 <mykim@prompt.co.kr>
	 * 처음 개발
	 * </pre>
	 *
	 * @since 2012. 6. 12.
	 */
	@Autowired
	@Qualifier("sqlMapClient")
	public void setCustomSqlMapClient(SqlMapClient sqlMapClient) {
		this.setSqlMapClient(sqlMapClient);
	}
}
