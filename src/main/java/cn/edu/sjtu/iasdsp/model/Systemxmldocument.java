package cn.edu.sjtu.iasdsp.model;
// Generated 2017-6-26 3:55:41 by Hibernate Tools 5.2.3.Final

/**
 * Systemxmldocument generated by hbm2java
 */
public class Systemxmldocument implements java.io.Serializable {

	private Integer id;
	private Integer objectId;
	private String objectName;
	private String description;
	private Integer fromSchemaId;
	private String xml;

	public Systemxmldocument() {
	}

	public Systemxmldocument(Integer objectId, String objectName, String description, Integer fromSchemaId,
			String xml) {
		this.objectId = objectId;
		this.objectName = objectName;
		this.description = description;
		this.fromSchemaId = fromSchemaId;
		this.xml = xml;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getObjectId() {
		return this.objectId;
	}

	public void setObjectId(Integer objectId) {
		this.objectId = objectId;
	}

	public String getObjectName() {
		return this.objectName;
	}

	public void setObjectName(String objectName) {
		this.objectName = objectName;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Integer getFromSchemaId() {
		return this.fromSchemaId;
	}

	public void setFromSchemaId(Integer fromSchemaId) {
		this.fromSchemaId = fromSchemaId;
	}

	public String getXml() {
		return this.xml;
	}

	public void setXml(String xml) {
		this.xml = xml;
	}

}
