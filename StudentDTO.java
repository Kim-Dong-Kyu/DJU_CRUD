package kr.ac.dju.student;
import java.io.Serializable;

public class StudentDTO implements Serializable {
	private int no;
	private String age;
	private String name;
	private String hak;
	public StudentDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StudentDTO(int no, String age, String name, String hak) {
		super();
		this.no = no;
		this.age = age;
		this.name = name;
		this.hak = hak;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getHak() {
		return hak;
	}
	public void setHak(String hak) {
		this.hak = hak;
	}
	@Override
	public String toString() {
		return "StudentDTO [no=" + no + ", age=" + age + ", name=" + name + ", hak=" + hak + "]";
	}
	
}
