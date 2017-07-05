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
 * WikiRelationships generated by hbm2java
 */
@Entity
@Table(name = "wiki_relationships", catalog = "isdsp_dev")
public class WikiRelationship implements java.io.Serializable {

	private Integer id;
	private WikiPage wikiPages;
	private Integer relatedWikiPageId;
	private Date createdAt;
	private Date updatedAt;

	public WikiRelationship() {
	}

	public WikiRelationship(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public WikiRelationship(WikiPage wikiPages, Integer relatedWikiPageId, Date createdAt, Date updatedAt) {
		this.wikiPages = wikiPages;
		this.relatedWikiPageId = relatedWikiPageId;
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
	@JoinColumn(name = "wiki_page_id")
	public WikiPage getWikiPages() {
		return this.wikiPages;
	}

	public void setWikiPages(WikiPage wikiPages) {
		this.wikiPages = wikiPages;
	}

	@Column(name = "related_wiki_page_id")
	public Integer getRelatedWikiPageId() {
		return this.relatedWikiPageId;
	}

	public void setRelatedWikiPageId(Integer relatedWikiPageId) {
		this.relatedWikiPageId = relatedWikiPageId;
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
