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
 * NodeOptions generated by hbm2java
 */
@Entity
@Table(name = "node_options", catalog = "isdsp_dev")
public class NodeOption implements java.io.Serializable {

	private Integer id;
	private NodeFunction nodeFunctions;
	private NodeOptionType nodeOptionTypes;
	private Integer nodeIndex;
	private String name;
	private String label;
	private String description;
	private String defaultValue;
	private Date createdAt;
	private Date updatedAt;
	private Set<NodeOptionChoice> nodeOptionChoiceses = new HashSet<NodeOptionChoice>(0);
	private Set<NodeOptionValue> nodeOptionValueses = new HashSet<NodeOptionValue>(0);
	private Set<NodeOptionValue> nodeOptionValueses_1 = new HashSet<NodeOptionValue>(0);
	private Set<NodeOptionChoice> nodeOptionChoiceses_1 = new HashSet<NodeOptionChoice>(0);

	public NodeOption() {
	}

	public NodeOption(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public NodeOption(NodeFunction nodeFunctions, NodeOptionType nodeOptionTypes, Integer nodeIndex, String name,
			String label, String description, String defaultValue, Date createdAt, Date updatedAt,
			Set<NodeOptionChoice> nodeOptionChoiceses, Set<NodeOptionValue> nodeOptionValueses,
			Set<NodeOptionValue> nodeOptionValueses_1, Set<NodeOptionChoice> nodeOptionChoiceses_1) {
		this.nodeFunctions = nodeFunctions;
		this.nodeOptionTypes = nodeOptionTypes;
		this.nodeIndex = nodeIndex;
		this.name = name;
		this.label = label;
		this.description = description;
		this.defaultValue = defaultValue;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.nodeOptionChoiceses = nodeOptionChoiceses;
		this.nodeOptionValueses = nodeOptionValueses;
		this.nodeOptionValueses_1 = nodeOptionValueses_1;
		this.nodeOptionChoiceses_1 = nodeOptionChoiceses_1;
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
	@JoinColumn(name = "node_function_id")
	public NodeFunction getNodeFunctions() {
		return this.nodeFunctions;
	}

	public void setNodeFunctions(NodeFunction nodeFunctions) {
		this.nodeFunctions = nodeFunctions;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "node_option_type_id")
	public NodeOptionType getNodeOptionTypes() {
		return this.nodeOptionTypes;
	}

	public void setNodeOptionTypes(NodeOptionType nodeOptionTypes) {
		this.nodeOptionTypes = nodeOptionTypes;
	}

	@Column(name = "node_index")
	public Integer getNodeIndex() {
		return this.nodeIndex;
	}

	public void setNodeIndex(Integer nodeIndex) {
		this.nodeIndex = nodeIndex;
	}

	@Column(name = "name", length = 65535)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "label", length = 65535)
	public String getLabel() {
		return this.label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "default_value", length = 65535)
	public String getDefaultValue() {
		return this.defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
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

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "nodeOptions")
	public Set<NodeOptionChoice> getNodeOptionChoiceses() {
		return this.nodeOptionChoiceses;
	}

	public void setNodeOptionChoiceses(Set<NodeOptionChoice> nodeOptionChoiceses) {
		this.nodeOptionChoiceses = nodeOptionChoiceses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "nodeOptions")
	public Set<NodeOptionValue> getNodeOptionValueses() {
		return this.nodeOptionValueses;
	}

	public void setNodeOptionValueses(Set<NodeOptionValue> nodeOptionValueses) {
		this.nodeOptionValueses = nodeOptionValueses;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "nodeOptions")
	public Set<NodeOptionValue> getNodeOptionValueses_1() {
		return this.nodeOptionValueses_1;
	}

	public void setNodeOptionValueses_1(Set<NodeOptionValue> nodeOptionValueses_1) {
		this.nodeOptionValueses_1 = nodeOptionValueses_1;
	}

	@OneToMany(fetch = FetchType.LAZY, mappedBy = "nodeOptions")
	public Set<NodeOptionChoice> getNodeOptionChoiceses_1() {
		return this.nodeOptionChoiceses_1;
	}

	public void setNodeOptionChoiceses_1(Set<NodeOptionChoice> nodeOptionChoiceses_1) {
		this.nodeOptionChoiceses_1 = nodeOptionChoiceses_1;
	}

}
