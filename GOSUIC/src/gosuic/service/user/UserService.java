package gosuic.service.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gosuic.dao.user.UserDao;
import gosuic.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	// ȸ���������� 
	public  boolean insertUser(UserVo user) {
		return userDao.insertUser(user);
	}
	
	//�α���
	public boolean login(UserVo vo) {
		return userDao.login(vo);
	}
	// ���̵� �ߺ�üũ
	public int checkID(String userEmail) {
		return userDao.checkId(userEmail);
	}

}
