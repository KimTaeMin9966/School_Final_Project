package net.koreate.vo;

import java.util.Date;

public class MemberVo {
	private String mwid="id001";
	private String mwpw="0000";
	private String mwname="000";
	private Date mwregdate = new Date();

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
		return "MemberVo [mwid=" + mwid + ", mwpw=" + mwpw + ", mwname=" + mwname + ", mwregdate=" + mwregdate + "]";
	}

}
