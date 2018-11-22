package net.koreate.vo;

public class ListVo {
	private String memberID;
	private String list_day;
	private String list_week;
	private String list_area;
	private String list_etc;

	public String getMemberID() {
		return memberID;
	}

	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}

	public String getList_day() {
		return list_day;
	}

	public void setList_day(String list_day) {
		this.list_day = list_day;
	}

	public String getList_week() {
		return list_week;
	}

	public void setList_week(String list_week) {
		this.list_week = list_week;
	}

	public String getList_area() {
		return list_area;
	}

	public void setList_area(String list_area) {
		this.list_area = list_area;
	}

	public String getList_etc() {
		return list_etc;
	}

	public void setList_etc(String list_etc) {
		this.list_etc = list_etc;
	}

	@Override
	public String toString() {
		return "ListVo [memberID=" + memberID + ", list_day=" + list_day + ", list_week=" + list_week + ", list_area="
				+ list_area + ", list_etc=" + list_etc + "]";
	}

}
