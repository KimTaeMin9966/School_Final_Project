package net.koreate.vo;

import java.util.Date;

public class Vote {
	private int vNo;
	private int vNumber;
	private String vName;
	private String vTitle;
	private Date vStart;
	private Date vEnd;
	private String vContent;

	public int getvNo() {
		return vNo;
	}

	public void setvNo(int vNo) {
		this.vNo = vNo;
	}

	public int getvNumber() {
		return vNumber;
	}

	public void setvNumber(int vNumber) {
		this.vNumber = vNumber;
	}

	public String getvName() {
		return vName;
	}

	public void setvName(String vName) {
		this.vName = vName;
	}

	public String getvTitle() {
		return vTitle;
	}

	public void setvTitle(String vTitle) {
		this.vTitle = vTitle;
	}

	public Date getvStart() {
		return vStart;
	}

	public void setvStart(Date vStart) {
		this.vStart = vStart;
	}

	public Date getvEnd() {
		return vEnd;
	}

	public void setvEnd(Date vEnd) {
		this.vEnd = vEnd;
	}

	public String getvContent() {
		return vContent;
	}

	public void setvContent(String vContent) {
		this.vContent = vContent;
	}

	@Override
	public String toString() {
		return "Vote [vNo=" + vNo + ", vNumber=" + vNumber + ", vName=" + vName + ", vTitle=" + vTitle + ", vStart="
				+ vStart + ", vEnd=" + vEnd + ", vContent=" + vContent + "]";
	}

}
