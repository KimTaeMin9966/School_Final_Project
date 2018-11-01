package net.koreate.vo;

public class ChecklistVo {
	
	private int matchmaker;
	private String matchmaker_date;
	private String matchmaker_day;
	private String matchmaker_place;
	private String matchmaker_etc;
	private String mwid;
	
	public int getMatchmaker() {
		return matchmaker;
	}
	public void setMatchmaker(int matchmaker) {
		this.matchmaker = matchmaker;
	}
	public String getMatchmaker_date() {
		return matchmaker_date;
	}
	public void setMatchmaker_date(String matchmaker_date) {
		this.matchmaker_date = matchmaker_date;
	}
	public String getMatchmaker_day() {
		return matchmaker_day;
	}
	public void setMatchmaker_day(String matchmaker_day) {
		this.matchmaker_day = matchmaker_day;
	}
	public String getMatchmaker_place() {
		return matchmaker_place;
	}
	public void setMatchmaker_place(String matchmaker_place) {
		this.matchmaker_place = matchmaker_place;
	}
	public String getMatchmaker_etc() {
		return matchmaker_etc;
	}
	public void setMatchmaker_etc(String matchmaker_etc) {
		this.matchmaker_etc = matchmaker_etc;
	}
	public String getMwid() {
		return mwid;
	}
	public void setMwid(String mwid) {
		this.mwid = mwid;
	}
	
	@Override
	public String toString() {
		return "ChecklistVo [matchmaker=" + matchmaker + ", matchmaker_date=" + matchmaker_date + ", matchmaker_day="
				+ matchmaker_day + ", matchmaker_place=" + matchmaker_place + ", matchmaker_etc=" + matchmaker_etc
				+ ", mwid=" + mwid + "]";
	}
	
	

}
