package cn.edu.sjtu.iasdsp.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import cn.edu.sjtu.iasdsp.dao.DepartmentInformationHome;
import cn.edu.sjtu.iasdsp.dao.UserHome;
import cn.edu.sjtu.iasdsp.dao.UserPictureHome;
import cn.edu.sjtu.iasdsp.model.DepartmentInformation;
import cn.edu.sjtu.iasdsp.model.UploadFile;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.model.UserPicture;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年8月9日 下午8:24:19
* @version 
* Introduction
*/
@Service
public class UserService {
	private static final Log logger = LogFactory.getLog(UserService.class);

	@Autowired
	DepartmentInformationHome departmentInformationHome;
	
	@Autowired
	UserHome userHome;
	
	@Autowired
	UserPictureHome userPictureHome;
	
	@Autowired
	private HttpServletRequest request;
	
	@Transactional
	public List<DepartmentInformation> getDepartmentInformations(){
		return departmentInformationHome.findByExample(new DepartmentInformation());
	}
	
	@Transactional
	public void saveUser(User user){
		user.setCreatedAt(new Date());
		user.setUpdatedAt(new Date());
		user.setEncryptedPassword("");
		user.setSignInCount(0);
		userHome.persist(user);
	}
	
	@Transactional
	public User findUser(String userName){
		logger.debug("find user");

		User userExample = new User();
		userExample.setUserName(userName);
		List<User> users = userHome.findByExample(userExample);
		if(users.size() == 0){
			logger.debug("find no user");
			return null;
		}
		else if(users.size() > 1){
			logger.error("find more than one user by user name:" + userName);
			return null;
		}
		else{
			logger.debug("Find user id:" + users.get(0).getId());
			return users.get(0);
		}
	}
	
	@Transactional
	public User findLoginUser(){
		logger.debug("findLoginUser");
		Subject subject = SecurityUtils.getSubject();
        String userName= subject.getPrincipal().toString();
		logger.debug("Find user:" + userName);
		return findUser(userName);
	}
	
	@Transactional
	public Integer uploadFiles(List<MultipartFile> multipartFiles, User user) throws IOException {
		String directory = request.getSession().getServletContext().getRealPath("upload");
		File file = new File(directory);
		file.mkdirs();
		for (MultipartFile multipartFile : multipartFiles) {
			logger.debug("create file");
			UUID fileId = UUID.randomUUID();
			file = new File(directory + "/user_picture", fileId + "_" + multipartFile.getOriginalFilename());
			IOUtils.copy(multipartFile.getInputStream(), new FileOutputStream(file));
			UserPicture userPicture = new UserPicture(null, file.getName(),
					"/upload/user_picture/" + file.getName(),
					file.getAbsolutePath(), 
					new Date(), new Date());
			if(user.getUserPicture()!= null){
				userPictureHome.delete(user.getUserPicture());
			}
			userPicture.setUser(user);
			userPictureHome.persist(userPicture);
			
			return userPicture.getId();
		}
		return null;
	  }

	@Transactional
	public void updateUser(User editUser) {
		User user = userHome.findById(editUser.getId());
		user.setDepartmentInformation(editUser.getDepartmentInformation());
		userHome.attachDirty(user);
	}
	
	
}
