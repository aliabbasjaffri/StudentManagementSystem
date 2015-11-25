package Project.service;

import Project.model.CourseDetails;
import Project.repository.StudentRepository;

import java.util.List;

public class StudentService {

	private StudentRepository studentRepository;

	public StudentService() {
		studentRepository = new StudentRepository();
	}

	public String save(String firstName, String lastName, String dateOfBirth, String Address , String PhoneNumber , String userName, String password, String emailAddress)
	{
		if (studentRepository != null) {
			if (studentRepository.findByUserName(userName)) {
				return "SignupFailure-UserNameExists";
			}
			studentRepository.save(firstName, lastName, dateOfBirth, Address , PhoneNumber , userName, password, emailAddress);
			return "SignupSuccess";
		} else {
			return "SignupFailure";
		}
	}

	public String findByLogin(String userName, String password) {
		String result = "LoginFailure";
		if (studentRepository != null) {
			boolean status = studentRepository.findByLogin(userName, password);
			if (status) {
				result = "LoginSuccess";
			}
		}
		return result;
	}

	public List<CourseDetails> showAllAvailableCourses( )
	{
		if (studentRepository != null)
		{
			List<CourseDetails> courses = studentRepository.showAllAvailableCourses();
			if (courses != null)
			{
				return courses;
			}
		}
		return null;
	}

	public List<CourseDetails> showAllCourses(String username)
	{
		if (studentRepository != null)
		{
			List<CourseDetails> courses = studentRepository.showAllCourses(username);
			if (courses != null)
			{
				return courses;
			}
		}
		return null;
	}
}
