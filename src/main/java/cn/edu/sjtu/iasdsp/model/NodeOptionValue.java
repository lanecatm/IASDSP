package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * NodeOptionValues generated by hbm2java
 */
@Entity
@Table(name = "node_option_values", catalog = "isdsp_dev")
public class NodeOptionValue implements java.io.Serializable {

	private Integer id;
	private NodeInformation nodeInformations;
	private NodeOption nodeOptions;
	private String value;
	private Date createdAt;
	private Date updatedAt;

	public NodeOptionValue() {
	}

	public NodeOptionValue(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public NodeOptionValue(NodeInformation nodeInformations, NodeOption nodeOptions, String value, Date createdAt,
			Date updatedAt) {
		this.nodeInformations = nodeInformations;
		this.nodeOptions = nodeOptions;
		this.value = value;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
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

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "node_information_id")
	public NodeInformation getNodeInformations() {
		return this.nodeInformations;
	}

	public void setNodeInformations(NodeInformation nodeInformations) {
		this.nodeInformations = nodeInformations;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "node_option_id")
	public NodeOption getNodeOptions() {
		return this.nodeOptions;
	}

	public void setNodeOptions(NodeOption nodeOptions) {
		this.nodeOptions = nodeOptions;
	}

	@Column(name = "value")
	public String getValue() {
		return this.value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at", nullable = false, length = 19)
	public Date getCreatedAt() {
		return this.createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at", nullable = false, length = 19)
	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

}