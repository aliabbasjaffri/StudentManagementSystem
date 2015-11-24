package Project.service;

import Project.repository.StudentRepository;

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
}
