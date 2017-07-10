package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Javaclassmethod generated by hbm2java
 */
@Entity
@Table(name = "javaclassmethod", catalog = "isdsp_dev")
public class EngineJavaclassmethod implements java.io.Serializable {

	private Integer id;
	private int applicationId;
	private String className;
	private String classUrl;
	private String methodName;
	private String userName;
	private String password;
	private Integer inputSchemaId;
	private Integer outputSchemaId;
	private Integer inputXmlid;
	private Integer outputXmlid;

	public EngineJavaclassmethod() {
	}

	public EngineJavaclassmethod(int applicationId) {
		this.applicationId = applicationId;
	}

	public EngineJavaclassmethod(int applicationId, String className, String classUrl, String methodName, String userName,
			String password, Integer inputSchemaId, Integer outputSchemaId, Integer inputXmlid, Integer outputXmlid) {
		this.applicationId = applicationId;
		this.className = className;
		this.classUrl = classUrl;
		this.methodName = methodName;
		this.userName = userName;
		this.password = password;
		this.inputSchemaId = inputSchemaId;
		this.outputSchemaId = outputSchemaId;
		this.inputXmlid = inputXmlid;
		this.outputXmlid = outputXmlid;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "ApplicationID", nullable = false)
	public int getApplicationId() {
		return this.applicationId;
	}

	public void setApplicationId(int applicationId) {
		this.applicationId = applicationId;
	}

	@Column(name = "ClassName", length = 50)
	public String getClassName() {
		return this.className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	@Column(name = "ClassURL", length = 16777215)
	public String getClassUrl() {
		return this.classUrl;
	}

	public void setClassUrl(String classUrl) {
		this.classUrl = classUrl;
	}

	@Column(name = "MethodName", length = 100)
	public String getMethodName() {
		return this.methodName;
	}

	public void setMethodName(String methodName) {
		this.methodName = methodName;
	}

	@Column(name = "UserName", length = 50)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "Password", length = 50)
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Column(name = "InputSchemaID")
	public Integer getInputSchemaId() {
		return this.inputSchemaId;
	}

	public void setInputSchemaId(Integer inputSchemaId) {
		this.inputSchemaId = inputSchemaId;
	}

	@Column(name = "OutputSchemaID")
	public Integer getOutputSchemaId() {
		return this.outputSchemaId;
	}

	public void setOutputSchemaId(Integer outputSchemaId) {
		this.outputSchemaId = outputSchemaId;
	}

	@Column(name = "InputXMLID")
	public Integer getInputXmlid() {
		return this.inputXmlid;
	}

	public void setInputXmlid(Integer inputXmlid) {
		this.inputXmlid = inputXmlid;
	}

	@Column(name = "OutputXMLID")
	public Integer getOutputXmlid() {
		return this.outputXmlid;
	}

	public void setOutputXmlid(Integer outputXmlid) {
		this.outputXmlid = outputXmlid;
	}

}