package dao;

import java.sql.*;
import java.util.*;
import dbutil.DBUtil;
import pojo.Student;

public class CollegeManagementDAO {
	
	
	public static List<Student> getAllStudents()
	{
		List<Student> studentList = new ArrayList<Student>();
		try
		{
			Connection conn = DBUtil.getConnection();
			Statement st= conn.createStatement();
			ResultSet rs= st.executeQuery("SELECT * FROM students");
			while(rs.next())
			{
				Student student = new Student(rs.getString("stud_id"),rs.getString("stud_fname"),rs.getString("stud_lname"),rs.getString("stud_course"),rs.getInt("stud_grade"));
				studentList.add(student);
			}
			
			DBUtil.closeConnection(conn);
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return studentList;
	}
	
	
	public static Student getStudentById(String studentId)
	{
		Student student = null;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("SELECT * FROM students WHERE stud_id = ?");
			ps.setString(1, studentId);
			ResultSet rs = ps.executeQuery();
			while(rs.next())
			{
				student = new Student(rs.getString("stud_id"),rs.getString("stud_fname"),rs.getString("stud_lname"),rs.getString("stud_course"),rs.getInt("stud_grade"));
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return student;
	}
	
	
	public static int addStudent(Student student)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("INSERT INTO students VALUES(?,?,?,?,?)");
			ps.setString(1, student.getStudentId());
			ps.setString(2, student.getStudentFirstName());
			ps.setString(3, student.getStudentLastName());
			ps.setString(4, student.getStudentCourse());
			ps.setInt(5, student.getStudentGrade());
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int updateStudent(Student student)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("UPDATE students SET stud_fname=?,stud_lname=?, stud_course=?, stud_grade=? WHERE stud_id=?");
			ps.setString(1, student.getStudentFirstName());
			ps.setString(1, student.getStudentLastName());
			ps.setString(2, student.getStudentCourse());
			ps.setInt(3, student.getStudentGrade());
			ps.setString(4, student.getStudentId());
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
	
	public static int deleteStudent(String studentId)
	{
		int status = 0;
		try
		{
			Connection conn = DBUtil.getConnection();
			PreparedStatement ps= conn.prepareStatement("DELETE FROM students where stud_id = ?");
			ps.setString(1, studentId);
			status = ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return status;
	}
}
