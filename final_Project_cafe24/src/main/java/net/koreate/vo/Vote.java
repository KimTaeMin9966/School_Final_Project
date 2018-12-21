package net.koreate.vo;

import java.util.Date;

public class Vote {
	private int vNo;
	private String vTitle;
	private Date vStart;
	private Date vEnd;
	private String vContent;
	private boolean isYse;

	public int getvNo() {
		return vNo;
	}

	public void setvNo(int vNo) {
		this.vNo = vNo;
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

	public boolean isYse() {
		return isYse;
	}

	public void setYse(boolean isYse) {
		this.isYse = isYse;
	}

	@Override
	public String toString() {
		return "Vote [vNo=" + vNo + ", vTitle=" + vTitle + ", vStart=" + vStart + ", vEnd=" + vEnd + ", vContent="
				+ vContent + ", isYse=" + isYse + "]";
	}

}
