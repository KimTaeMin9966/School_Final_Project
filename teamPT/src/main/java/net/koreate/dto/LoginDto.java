package net.koreate.dto;

public class LoginDto {
	private String mwid;
	private String mwpw;
	private boolean useCookie;

	public String getMwid() {
		return mwid;
	}

	public void setMwid(String mwid) {
		this.mwid = mwid;
	}

	public String getMwpw() {
		return mwpw;
	}

	public void setMwpw(String mwpw) {
		this.mwpw = mwpw;
	}

	public boolean isUseCookie() {
		return useCookie;
	}

	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	@Override
	public String toString() {
		return "LoginDto { [ mwid : " + this.mwid
				+ " ], [ mwpw : " + this.mwpw
				+ " ], [ useCookie : " + this.useCookie
				+ " ] }";
	}
}
