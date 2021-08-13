package com.nlphuong.entity;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class DatabaseFashion {
	
	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public void getListEmployee() {
		String sql = "select * from Employee";
		List<Employee> empList = jdbcTemplate.query(sql, new RowMapper<Employee>() {

			@Override
			public Employee mapRow(ResultSet rowResult, int rowNum) throws SQLException {
				Employee emp = new Employee();
				emp.name = rowResult.getString("name");
				emp.age = rowResult.getInt("age");
				
				return emp;
			}
			
		});
		
		for (Employee emp : empList) {
			System.out.println("Name: " + emp.getName()+"\tAge: "+emp.getAge());
		}
	}
}
