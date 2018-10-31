package net.koreate.vo;

public class WeddingStudioVo {
	private int studio_hno;
	private String studio_name;
	private String studio_location;
	private int studio_person;
	private int studio_price;
	private String studio_thema;
	private String studio_contents;
	private String studio_link;
	private int studio_area;

	public int getStudio_hno() {
		return studio_hno;
	}

	public void setStudio_hno(int studio_hno) {
		this.studio_hno = studio_hno;
	}

	public String getStudio_name() {
		return studio_name;
	}

	public void setStudio_name(String studio_name) {
		this.studio_name = studio_name;
	}

	public String getStudio_location() {
		return studio_location;
	}

	public void setStudio_location(String studio_location) {
		this.studio_location = studio_location;
	}

	public int getStudio_person() {
		return studio_person;
	}

	public void setStudio_person(int studio_person) {
		this.studio_person = studio_person;
	}

	public int getStudio_price() {
		return studio_price;
	}

	public void setStudio_price(int studio_price) {
		this.studio_price = studio_price;
	}

	public String getStudio_thema() {
		return studio_thema;
	}

	public void setStudio_thema(String studio_thema) {
		this.studio_thema = studio_thema;
	}

	public String getStudio_contents() {
		return studio_contents;
	}

	public void setStudio_contents(String studio_contents) {
		this.studio_contents = studio_contents;
	}

	public String getStudio_link() {
		return studio_link;
	}

	public void setStudio_link(String studio_link) {
		this.studio_link = studio_link;
	}

	public int getStudio_area() {
		return studio_area;
	}

	public void setStudio_area(int studio_area) {
		this.studio_area = studio_area;
	}

	@Override
	public String toString() {
		return "WeddingStudioVo [studio_hno=" + studio_hno + ", studio_name=" + studio_name + ", studio_location="
				+ studio_location + ", studio_person=" + studio_person + ", studio_price=" + studio_price
				+ ", studio_thema=" + studio_thema + ", studio_contents=" + studio_contents + ", studio_link="
				+ studio_link + ", studio_area=" + studio_area + "]";
	}

}
