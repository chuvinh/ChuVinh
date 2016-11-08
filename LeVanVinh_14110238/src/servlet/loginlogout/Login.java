package servlet.loginlogout;

public class Login {
	private String name_user;
	private String password;
	public Login(String name_user, String password) {
		this.name_user = name_user;
		this.password = password;
	}
	public Login()
	{
		
	}
	public String getNameuser() {
		return name_user;
	}

	public void setNameuser(String name_user) {
		this.name_user = name_user;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((name_user == null) ? 0 : name_user.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Login other = (Login) obj;
		if (name_user == null) {
			if (other.name_user != null)
				return false;
		} else if (!name_user.equals(other.name_user))
			return false;
		return true;
	}
}
