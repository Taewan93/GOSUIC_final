package gosuic.dao.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import gosuic.vo.UserVo;

@Repository 
public class UserDao {
	
	@Autowired 
	JdbcTemplate jdbcTemplate;
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
		
	//ȸ������
	public boolean insertUser(UserVo user) {
		int n = getJdbcTemplate().update("insert into userinfo values(?,?,?,?,?,?)" ,
				new Object[] {user.getUserEmail(),user.getUserID(),user.getPassword1(),user.getUserName(),user.getUserBirthday(),user.getUserGender()});
		return (n>0) ? true : false;
	}
	
	//�α���
	public boolean login(UserVo vo) {
		System.out.println("����dao����");
		System.out.println("�ٿ��� " + vo.getUserEmail());
		try {
		String str= getJdbcTemplate().queryForObject("select useremail from userinfo where useremail=? and userpassword=?",
				new Object[] {vo.getUserEmail(),vo.getPassword1()}, String.class);
		System.out.println("str�� ����" +str);

		}catch(EmptyResultDataAccessException e) {
			System.out.println("�������");
			return false;
		}
		return true;
	}
	// ���̵��ߺ� üũ
	public int checkId(String userEmail) {
		try {
		System.out.println("���̵� �ߺ�üũ �ٿ� : " + userEmail );
		String check = getJdbcTemplate().queryForObject("select userID from userinfo where useremail=?", new Object[] {userEmail},String.class);
		System.out.println( "======== "+check);
		
		}catch(EmptyResultDataAccessException e) {
			e.printStackTrace();
			return 0;
		}
		return 1;
		
	}

	}

