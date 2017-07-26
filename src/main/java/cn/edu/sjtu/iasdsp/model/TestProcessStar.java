package cn.edu.sjtu.iasdsp.model;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;


/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月21日 下午9:46:46
* @version 
* Introduction
*/
@Entity
@Table(name = "test_process_stars", catalog = "isdsp_dev")
public class TestProcessStar implements java.io.Serializable{

	private Integer id;
	private TestProcessInformation testProcessInformation;
	
	public TestProcessStar() {
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

	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "test_process_information_id")
	public TestProcessInformation getTestProcessInformation() {
		return testProcessInformation;
	}
	public void setTestProcessInformation(TestProcessInformation testProcessInformation) {
		this.testProcessInformation = testProcessInformation;
	}


	
	

}
