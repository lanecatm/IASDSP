package cn.edu.sjtu.iasdsp.service;

import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.sjtu.iasdsp.dao.TestProcessInformationHome;
import cn.edu.sjtu.iasdsp.dao.TestProcessStarHome;
import cn.edu.sjtu.iasdsp.dao.TestSharedProcessRecordHome;
import cn.edu.sjtu.iasdsp.model.TestProcessInformation;
import cn.edu.sjtu.iasdsp.model.TestProcessStar;
import cn.edu.sjtu.iasdsp.model.TestSharedProcessRecord;

/**
 * @author xfhuang
 * @email lanecatm@sjtu.edu.cn
 * @date 2017年7月19日 下午8:24:07
 * @version Introduction
 */
@Service
public class TestService {
	private static final Log logger = LogFactory.getLog(TestService.class);


	@Autowired
	private TestSharedProcessRecordHome testSharedProcessRecordHome;
	@Autowired 
	private TestProcessInformationHome testProcessInformationHome;
	@Autowired 
	private  TestProcessStarHome testProcessStarHome;

	
	@Transactional
	public void refreshAll(){
		List<TestSharedProcessRecord> testSharedProcessRecords = testSharedProcessRecordHome.findByExample(new TestSharedProcessRecord());
		for(TestSharedProcessRecord testSharedProcessRecord : testSharedProcessRecords){
			logger.debug("sharedProcessRecord id" + testSharedProcessRecord.getId() + " origin share record times:" + testSharedProcessRecord.getRunningTime());
			int shareExecuteNum = testSharedProcessRecord.getSubTestProcessInformations().size();
			logger.debug("sharedProcessRecord id" + testSharedProcessRecord.getId() + " new share record times:" + shareExecuteNum);
			int shareStarNum = 0;
			int shareStar = 0;
			for(TestProcessInformation testProcessInformation : testSharedProcessRecord.getSubTestProcessInformations()){
				logger.debug("processInformation id" + testProcessInformation.getId());
				if (testProcessInformation.getTestProcessStar() != null){
					++shareStarNum;
					shareStar += testProcessInformation.getTestProcessStar().getId();
				}
			}
			testSharedProcessRecord.setAllStar(shareStar);
			testSharedProcessRecord.setStarUserNumber(shareStarNum);
			testSharedProcessRecord.setRunningTime(shareExecuteNum);
			testSharedProcessRecordHome.attachDirty(testSharedProcessRecord);
			logger.debug("share process id:" + testSharedProcessRecord.getId() + ", star:" + testSharedProcessRecord.getAllStar());
		}
	}

	@Transactional
	public void addOneSide(){
		TestSharedProcessRecord testSharedProcessRecord = new TestSharedProcessRecord(0,0,0);
		testSharedProcessRecordHome.persist(testSharedProcessRecord);
		TestProcessInformation testProcessInformation1 = new TestProcessInformation();
		TestProcessInformation testProcessInformation2 = new TestProcessInformation();
		TestProcessInformation testProcessInformation3 = new TestProcessInformation();
		testProcessInformation1.setTestSharedProcessRecord(testSharedProcessRecord);
		testProcessInformation2.setParentTestSharedProcessRecord(testSharedProcessRecord);
		testProcessInformation3.setParentTestSharedProcessRecord(testSharedProcessRecord);
		testProcessInformationHome.persist(testProcessInformation1);
		testProcessInformationHome.persist(testProcessInformation2);
		testProcessInformationHome.persist(testProcessInformation3);
		TestProcessStar processStar1 = new TestProcessStar();
		TestProcessStar processStar3 = new TestProcessStar();
		processStar1.setTestProcessInformation(testProcessInformation1);
		processStar3.setTestProcessInformation(testProcessInformation3);
		testProcessStarHome.persist(processStar1);
		testProcessStarHome.persist(processStar3);
	}
	
	@Transactional
	public void addBothSide(){
		TestSharedProcessRecord testSharedProcessRecord = new TestSharedProcessRecord(0,0,0);
		testSharedProcessRecordHome.persist(testSharedProcessRecord);
		TestProcessInformation testProcessInformation1 = new TestProcessInformation();
		TestProcessInformation testProcessInformation2 = new TestProcessInformation();
		TestProcessInformation testProcessInformation3 = new TestProcessInformation();
		testProcessInformation1.setTestSharedProcessRecord(testSharedProcessRecord);
		testProcessInformation2.setParentTestSharedProcessRecord(testSharedProcessRecord);
		testProcessInformation3.setParentTestSharedProcessRecord(testSharedProcessRecord);
		testSharedProcessRecord.setTestProcessInformation(testProcessInformation1);
		testSharedProcessRecord.getSubTestProcessInformations().add(testProcessInformation2);
		testSharedProcessRecord.getSubTestProcessInformations().add(testProcessInformation3);
		testProcessInformationHome.persist(testProcessInformation1);
		testProcessInformationHome.persist(testProcessInformation2);
		testProcessInformationHome.persist(testProcessInformation3);
		TestProcessStar processStar1 = new TestProcessStar();
		TestProcessStar processStar3 = new TestProcessStar();
		processStar1.setTestProcessInformation(testProcessInformation1);
		processStar3.setTestProcessInformation(testProcessInformation3);
		testProcessStarHome.persist(processStar1);
		testProcessStarHome.persist(processStar3);
	}
	
	@Transactional
	public List<TestSharedProcessRecord> getAllSharedRecord(){
		return testSharedProcessRecordHome.findByExample(new TestSharedProcessRecord());
	}
}
