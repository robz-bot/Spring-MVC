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
				return e;
			}
		});
		return listEmp;
	}

	public static void saveEmp(Employee p) {
		String sql = "INSERT INTO employees (EmpId,Name,PhoneNumber,Email)" + " VALUES (?,?,?,?)";
		template.update(sql, p.getEmpId(), p.getName(), p.getPhoneNumber(), p.getEmail());
	}
}
