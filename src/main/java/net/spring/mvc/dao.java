package net.spring.mvc;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import net.spring.models.*;

public class dao {
	static JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public List<Employee> getEmpDetails() {

		String sql = "SELECT * FROM employees";
		List<Employee> listEmp = template.query(sql, new RowMapper<Employee>() {

			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				Employee e = new Employee();
				e.setEmpId(rs.getString("EmpId"));
				e.setName(rs.getString("Name"));
				e.setPhoneNumber(rs.getString("PhoneNumber"));
				e.setEmail(rs.getString("Email"));
				e.setRole(rs.getString("Role"));
				return e;
			}
		});
		return listEmp;
	}
	
	public static List<Admin> getAdminDetails() {

		String sql = "SELECT * FROM admin";
		List<Admin> listAdmin = template.query(sql, new RowMapper<Admin>() {

			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				Admin e = new Admin();
				e.setUserName(rs.getString("UserName"));
				e.setPassword(rs.getString("Password"));
				return e;
			}
		});
		return listAdmin;
	}

	public static void saveEmp(Employee p) {
		String sql = "INSERT INTO employees (EmpId,Name,PhoneNumber,Email,Role)" + " VALUES (?,?,?,?,?)";
		template.update(sql, p.getEmpId(), p.getName(), p.getPhoneNumber(), p.getEmail(),p.getRole());
	}

	public void saveAdmin(Admin p) {
		String sql = "INSERT INTO admin (UserName,Password,Email)" + " VALUES (?,?,?)";
		template.update(sql, p.getUserName(), p.getPassword(),p.getEmail());
	}

	public void saveMail(Mail mail) {
		// TODO Auto-generated method stub
		
	}
}
