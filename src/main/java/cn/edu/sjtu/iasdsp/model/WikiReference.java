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
 * WikiReferences generated by hbm2java
 */
@Entity
@Table(name = "wiki_references", catalog = "isdsp_dev")
public class WikiReference implements java.io.Serializable {

	private Integer id;
	private WikiPage wikiPage;
	private String content;
	private String url;
	private Date createdAt;
	private Date updatedAt;

	public WikiReference() {
	}

	public WikiReference(Date createdAt, Date updatedAt) {
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public WikiReference(String content, String url, Date createdAt, Date updatedAt) {
		super();
		this.content = content;
		this.url = url;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public WikiReference(WikiPage wikiPages, String content, String url, Date createdAt, Date updatedAt) {
		this.wikiPage = wikiPages;
		this.content = content;
		this.url = url;
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
	public WikiPage getWikiPage() {
		return this.wikiPage;
	}

	public void setWikiPage(WikiPage wikiPage) {
		this.wikiPage = wikiPage;
	}

	@Column(name = "content")
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Column(name = "url")
	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
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

	public String toString() {
		return "WikiReference [id=" + id + ", content=" + content + ", url=" + url
				+ ", createdAt=" + createdAt + ", updatedAt=" + updatedAt + "]";
	}

}
