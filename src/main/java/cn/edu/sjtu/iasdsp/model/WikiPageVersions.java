package cn.edu.sjtu.iasdsp.model;
// Generated 2017-6-26 3:55:41 by Hibernate Tools 5.2.3.Final

import java.util.Date;

/**
 * WikiPageVersions generated by hbm2java
 */
public class WikiPageVersions implements java.io.Serializable {

	private Integer id;
	private int pageId;
	private Integer updatorId;
	private Integer number;
	private String comment;
	private String path;
	private String title;
	private String content;
	private Date updatedAt;

	public WikiPageVersions() {
	}

	public WikiPageVersions(int pageId) {
		this.pageId = pageId;
	}

	public WikiPageVersions(int pageId, Integer updatorId, Integer number, String comment, String path, String title,
			String content, Date updatedAt) {
		this.pageId = pageId;
		this.updatorId = updatorId;
		this.number = number;
		this.comment = comment;
		this.path = path;
		this.title = title;
		this.content = content;
		this.updatedAt = updatedAt;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getPageId() {
		return this.pageId;
	}

	public void setPageId(int pageId) {
		this.pageId = pageId;
	}

	public Integer getUpdatorId() {
		return this.updatorId;
	}

	public void setUpdatorId(Integer updatorId) {
		this.updatorId = updatorId;
	}

	public Integer getNumber() {
		return this.number;
	}

	public void setNumber(Integer number) {
		this.number = number;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getUpdatedAt() {
		return this.updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

}
