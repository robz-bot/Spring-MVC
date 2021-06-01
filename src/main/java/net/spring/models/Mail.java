package net.spring.models;

public class Mail {
	
	private String EmpId ;
	private String Project;  
	private String Module ;
	private String Status ;
	private String Message ;
	private String StartDate ; 
	private String EndDate ;
	public String getEmpId() {
		return EmpId;
	}
	public void setEmpId(String empId) {
		EmpId = empId;
	}
	public String getProject() {
		return Project;
	}
	public void setProject(String project) {
		Project = project;
	}
	public String getModule() {
		return Module;
	}
	public void setModule(String module) {
		Module = module;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	public String getStartDate() {
		return StartDate;
	}
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}
	public String getEndDate() {
		return EndDate;
	}
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	@Override
	public String toString() {
		return "Mail [EmpId=" + EmpId + ", Project=" + Project + ", Module=" + Module + ", Status=" + Status
				+ ", Message=" + Message + ", StartDate=" + StartDate + ", EndDate=" + EndDate + "]";
	}
	public Mail() {}
	public Mail(String empId, String project, String module, String status, String message, String startDate,
			String endDate) {
		super();
		EmpId = empId;
		Project = project;
		Module = module;
		Status = status;
		Message = message;
		StartDate = startDate;
		EndDate = endDate;
	}
}
