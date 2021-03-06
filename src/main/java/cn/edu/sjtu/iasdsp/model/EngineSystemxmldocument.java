package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Systemxmldocument generated by hbm2java
 */
@Entity
@Table(name = "systemxmldocument", catalog = "isdsp_dev")
public class EngineSystemxmldocument implements java.io.Serializable {

	private Integer id;
	private Integer objectId;
	private String objectName;
	private String description;
	private Integer fromSchemaId;
	private String xml;

	public EngineSystemxmldocument() {
	}

	public EngineSystemxmldocument(Integer objectId, String objectName, String description, Integer fromSchemaId,
			String xml) {
		this.objectId = objectId;
		this.objectName = objectName;
		this.description = description;
		this.fromSchemaId = fromSchemaId;
		this.xml = xml;
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

	@Column(name = "ObjectID")
	public Integer getObjectId() {
		return this.objectId;
	}

	public void setObjectId(Integer objectId) {
		this.objectId = objectId;
	}

	@Column(name = "ObjectName", length = 50)
	public String getObjectName() {
		return this.objectName;
	}

	public void setObjectName(String objectName) {
		this.objectName = objectName;
	}

	@Column(name = "Description", length = 50)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "FromSchemaID")
	public Integer getFromSchemaId() {
		return this.fromSchemaId;
	}

	public void setFromSchemaId(Integer fromSchemaId) {
		this.fromSchemaId = fromSchemaId;
	}

	@Column(name = "XML", length = 16777215)
	public String getXml() {
		return this.xml;
	}

	public void setXml(String xml) {
		this.xml = xml;
	}

}
