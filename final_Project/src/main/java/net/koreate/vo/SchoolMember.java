package net.koreate.vo;

public class SchoolMember {
	private int sNo;
	private int sNumber;
	private String sName;

	public int getsNo() {
		return sNo;
	}

	public void setsNo(int sNo) {
		this.sNo = sNo;
	}

	public int getsNumber() {
		return sNumber;
	}

	public void setsNumber(int sNumber) {
		this.sNumber = sNumber;
	}

	public String getsName() {
		return sName;
	}

	public void setsName(String sName) {
		this.sName = sName;
	}

	@Override
	public String toString() {
		return "SchoolMember [sNo=" + sNo + ", sNumber=" + sNumber + ", sName=" + sName + "]";
	}

}
