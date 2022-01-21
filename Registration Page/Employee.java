package com.cdac.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Employee")
public class Employee {
	
	@Id
	@GeneratedValue
	private int EmpID; //primary key
	private String FirstName;
	private String LastName;
	private String Username;
	private int TeamID;
	private int ManagerID;
	private boolean IsManager;
	private String Password;
	
//	@OneToOne
//	@JoinColumn(name = "Mgr_id") //foreign key
//	private Manager manager;

	
	
	public int getEmpID() {
		return EmpID;
	}
	public void setEmpID(int empID) {
		EmpID = empID;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int getTeamID() {
		return TeamID;
	}
	public void setTeamID(int teamID) {
		TeamID = teamID;
	}
	public int getManagerID() {
		return ManagerID;
	}
	public void setManagerID(int managerID) {
		ManagerID = managerID;
	}
	public boolean getIsManager() {
		return IsManager;
	}
	public void setIsManager(boolean isManager) {
		IsManager = isManager;
	}
	
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}

	
	

	

	

}

