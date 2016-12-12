package mode;

public class Login {
	private String name_user;
	private String password;
	public Login(String name_user, String password) {
		super();
		this.name_user = name_user;
		this.password = password;
	}
	public String getName_user() {
		return name_user;
	}
	public void setName_user(String name_user) {
		this.name_user = name_user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
