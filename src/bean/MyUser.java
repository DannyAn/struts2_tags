package bean;
public class MyUser {
	public User[] getUsers(){
		User u1 = new User();
		u1.setUname("陈恒");
		u1.setUemail("123456@qq.com");
		User u2 = new User();
		u2.setUname("张一鸣");
		u2.setUemail("888888@qq.com");
		User[] users = new User[2];
		users[0] = u1;
		users[1] = u2;
		return users;
	}
}
