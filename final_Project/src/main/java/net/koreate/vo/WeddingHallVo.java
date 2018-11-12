package net.koreate.vo;

import java.util.Arrays;

public class WeddingHallVo {
	private int hall_hno;
	private String hall_name;
	private String hall_location;
	private int hall_person;
	private int hall_price;
	private String hall_thema;
	private String hall_contents;
	private String hall_link;
	private int hall_area;
	private String fullName;

	private String[] files;

	public int getHall_hno() {
		return hall_hno;
	}

	public void setHall_hno(int hall_hno) {
		this.hall_hno = hall_hno;
	}

	public String getHall_name() {
		return hall_name;
	}

	public void setHall_name(String hall_name) {
		this.hall_name = hall_name;
	}

	public String getHall_location() {
		return hall_location;
	}

	public void setHall_location(String hall_location) {
		this.hall_location = hall_location;
	}

	public int getHall_person() {
		return hall_person;
	}

	public void setHall_person(int hall_person) {
		this.hall_person = hall_person;
	}

	public int getHall_price() {
		return hall_price;
	}

	public void setHall_price(int hall_price) {
		this.hall_price = hall_price;
	}

	public String getHall_thema() {
		return hall_thema;
	}

	public void setHall_thema(String hall_thema) {
		this.hall_thema = hall_thema;
	}

	public String getHall_contents() {
		return hall_contents;
	}

	public void setHall_contents(String hall_contents) {
		this.hall_contents = hall_contents;
	}

	public String getHall_link() {
		return hall_link;
	}

	public void setHall_link(String hall_link) {
		this.hall_link = hall_link;
	}

	public int getHall_area() {
		return hall_area;
	}

	public void setHall_area(int hall_area) {
		this.hall_area = hall_area;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String[] getFiles() {
		return files;
	}

	public void setFiles(String[] files) {
		this.files = files;
	}

	@Override
	public String toString() {
		return "WeddingHallVo [hall_hno=" + hall_hno + ", hall_name=" + hall_name + ", hall_location=" + hall_location
				+ ", hall_person=" + hall_person + ", hall_price=" + hall_price + ", hall_thema=" + hall_thema
				+ ", hall_contents=" + hall_contents + ", hall_link=" + hall_link + ", hall_area=" + hall_area
				+ ", fullName=" + fullName + ", files=" + Arrays.toString(files) + "]";
	}

}
