package net.koreate.vo;

import java.util.Date;

public class MemberVo {
	private int mwno;
	private String mwid;
	private String mwpw;
	private String mwname;
	private Date mwregdate;

	public int getMwno() {
		return mwno;
	}

	public void setMwno(int mwno) {
		this.mwno = mwno;
	}

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

	public String getMwname() {
		return mwname;
	}

	public void setMwname(String mwname) {
		this.mwname = mwname;
	}

	public Date getMwregdate() {
		return mwregdate;
	}

	public void setMwregdate(Date mwregdate) {
		this.mwregdate = mwregdate;
	}

	@Override
	public String toString() {
		return "MemberVo [mwno=" + mwno + ", mwid=" + mwid + ", mwpw=" + mwpw + ", mwname=" + mwname + ", mwregdate="
				+ mwregdate + "]";
	}

}
