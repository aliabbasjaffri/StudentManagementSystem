package Project.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import Project.util.DbUtil;

public class StudentRepository
{
	private Connection dbConnection;
	private static double RollNumber = 114000;

	public StudentRepository() {
		dbConnection = DbUtil.getConnection();
	}

	public void save(String firstName, String lastName, String dateOfBirth, String Address , String PhoneNumber , String Username, String Password, String emailAddress)
	{
		if (dbConnection != null)
		{
			try
			{
				PreparedStatement prepStatement = dbConnection
						.prepareStatement("INSERT INTO User( id , Name , DOB , Address , Phone_Number , Roll_Number , Username , Password , EmailAddress  )  VALUES (DEFAULT , ? , ? , ? , ? , ? , ? , ? , ? )");
				prepStatement.setString(1, firstName + lastName);
				prepStatement.setDate(2, new java.sql.Date(new SimpleDateFormat("MM/dd/yyyy").parse(dateOfBirth.substring(0, 10)).getTime()));
                prepStatement.setString(3, Address);
                prepStatement.setString(4, PhoneNumber);
				prepStatement.setString(5, String.valueOf(RollNumber++));
				prepStatement.setString(6, Username);
				prepStatement.setString(7, Password);
				prepStatement.setString(8, emailAddress);

				prepStatement.executeUpdate();

			}
            catch (SQLException | ParseException e)
            {
				e.printStackTrace();
			}
		}
	}

	public boolean findByUserName(String userName) {
		if (dbConnection != null) {
			try {
				PreparedStatement prepStatement = dbConnection
						.prepareStatement("select count(*) from User where UserName = ?");
				prepStatement.setString(1, userName);

				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {
						if (result.getInt(1) == 1) {
							return true;
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

	public boolean findByLogin(String userName, String password) {
		if (dbConnection != null) {
			try {
				PreparedStatement prepStatement = dbConnection
						.prepareStatement("select Password from User where UserName = ?");
				prepStatement.setString(1, userName);

				ResultSet result = prepStatement.executeQuery();
				if (result != null) {
					while (result.next()) {
						if (result.getString(1).equals(password)) {
							return true;
						}
					}
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return false;
	}

}
