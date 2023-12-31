package test;

import java.io.IOException;

public class Student  {
	
	private String department;
	private String studentID;
	private String studentName;
	private int mark;
       
	public Student(String department,String studentID, String studentName, int mark) {
		this.department = department;
		this.studentID = studentID;
		this.studentName = studentName;
		this.mark = mark;
	}
	
	public String getDepartment() {
		return department;
	}
	
	public void setDepartment(String department) {
		this.department = department;
	}
	
	public String getStudentID() {
		return studentID;
	}
	
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	
	public String getStudentName() {
		return studentName;
	}
	
	public void setStudentName(String department) {
		this.department = department;
	}
	
	public int getMark() {
		return mark;
	}
	
	public void setMark(int mark) {
		this.mark = mark;
	}

}
