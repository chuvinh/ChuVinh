package servlet.loginlogout;

public class user_info {
	private String Username;

	public user_info(String Username) {
		this.Username = Username;
	}

	public user_info() {
	}

	public String getNameuser() {
		return Username;
	}

	public void setNameuser(String Username) {
		this.Username = Username;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((Username == null) ? 0 : Username.hashCode());
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
		user_info other = (user_info) obj;
		if (Username == null) {
			if (other.Username != null)
				return false;
		} else if (!Username.equals(other.Username))
			return false;
		return true;
	}

}