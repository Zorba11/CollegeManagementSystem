package pojo;

public class Student {

	String studentId;
	String studentFirstName;
	String studentLastName;
	String studentCourse;
	Integer studentGrade;
	
	public Student() {
		//default empty constructor
	}

	public Student(String studentId, String studentFirstName, String studentLastName, String studentCourse,
			Integer studentGrade) {
		super();
		this.studentId = studentId;
		this.studentFirstName = studentFirstName;
		this.studentLastName = studentLastName;
		this.studentCourse = studentCourse;
		this.studentGrade = studentGrade;
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	public String getStudentFirstName() {
		return studentFirstName;
	}

	public void setStudentFirstName(String studentFirstName) {
		this.studentFirstName = studentFirstName;
	}

	public String getStudentLastName() {
		return studentLastName;
	}

	public void setStudentLastName(String studentLastName) {
		this.studentLastName = studentLastName;
	}

	public String getStudentCourse() {
		return studentCourse;
	}

	public void setStudentCourse(String studentCourse) {
		this.studentCourse = studentCourse;
	}

	public Integer getStudentGrade() {
		return studentGrade;
	}

	public void setStudentGrade(Integer studentGrade) {
		this.studentGrade = studentGrade;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentFirstName=" + studentFirstName + ", studentLastName="
				+ studentLastName + ", studentCourse=" + studentCourse + ", studentGrade=" + studentGrade + "]";
	}
	
	
	
	
}
