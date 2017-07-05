package cn.edu.sjtu.iasdsp.model;
// Generated 2017-7-5 20:36:16 by Hibernate Tools 5.2.3.Final

import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * NodeCategories generated by hbm2java
 */
@Entity
@Table(name = "node_categories", catalog = "isdsp_dev")
public class NodeCategory implements java.io.Serializable {

	private Integer id;
	private NodeType nodeTypes;
	private String name;
	private Date createdAt;
	private Date updatedAt;
	private Set<NodeFunction> nodeFunctionses = new HashSet<NodeFunction>(0);

	public NodeCategory() {
	}

	public NodeCategory(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public NodeCategory(NodeType nodeTypes, String name, Date createdAt, Date updatedAt,
			Set<NodeFunction> nodeFunctionses) {
		this.nodeTypes = nodeTypes;
		this.name = name;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.nodeFunctionses = nodeFunctionses;
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
	@JoinColumn(name = "node_type_id")
	public NodeType getNodeTypes() {
		return this.nodeTypes;
	}

	public void setNodeTypes(NodeType nodeTypes) {
		this.nodeTypes = nodeTypes;
	}

	@Column(name = "name", length = 65535)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
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

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "nodeCategories")
	public Set<NodeFunction> getNodeFunctionses() {
		return this.nodeFunctionses;
	}

	public void setNodeFunctionses(Set<NodeFunction> nodeFunctionses) {
		this.nodeFunctionses = nodeFunctionses;
	}


}
