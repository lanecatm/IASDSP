package cn.edu.sjtu.iasdsp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.web.util.SavedRequest;
import org.apache.shiro.web.util.WebUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import cn.edu.sjtu.iasdsp.common.CommonValue;
import cn.edu.sjtu.iasdsp.dto.MessageDto;
import cn.edu.sjtu.iasdsp.model.User;
import cn.edu.sjtu.iasdsp.service.UserService;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年6月26日 下午9:21:05
* @version 
* Introduction
*/

/**
 * 例子: Rest 风格地址 id Sample: Restful /user/:id /user/:id/delete /user/:id/update
 * /users
 */
@Controller
@RequestMapping("/user")
public class UserController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private UserService userService;

	//private Map<String, User> users = new HashMap<String, User>();

	// @Resource(type=SessionFactory.class)
	// private SessionFactory sessionFactory;

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String isLogin(User currUser, HttpServletRequest request) {
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(currUser.getUserName(), currUser.getPassword());
		token.setRememberMe(true);

		try {
			subject.login(token);
			if (subject.isAuthenticated()) {
				request.getSession().setAttribute("user", currUser);
				SavedRequest savedRequest = WebUtils.getSavedRequest(request);
				// 获取保存的URL
				if (savedRequest == null || savedRequest.getRequestUrl() == null) {
					return "redirect:/";
				} else {
					// String url = savedRequest.getRequestUrl().substring(12,
					// savedRequest.getRequestUrl().length());
					return "redirect:/" + savedRequest.getRequestUrl().substring(CommonValue.NAME_SPACE_CHAR_NUM);
				}
			}
			return "redirect:/user/login";
		} catch (AuthenticationException e) {
			logger.error("login in failed:" + e);
			token.clear();
			return "redirect:/user/login";
		}
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "/user/login";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String doLogout(HttpServletRequest request) {
		logger.info("user" + request.getSession().getAttribute("user") + "logout");
		SecurityUtils.getSubject().logout();
		return "redirect:/";
	}

	@RequestMapping(value = "/sign_up", method = RequestMethod.GET)
	public String signUp(Model model) {
		logger.debug("Into signUp");
		SecurityUtils.getSubject().logout();
		model.addAttribute("user", new User());
		model.addAttribute("departmentList", userService.getDepartmentInformations());
		logger.debug("signUp");
		return "/user/sign_up";
	}

	@RequestMapping(value = "/sign_up", method = RequestMethod.POST)
	public String doSignUp(@Validated User user, BindingResult backResult) {
		logger.debug("Into doSignUp, user:" + user);
		if (backResult.hasErrors()) {
			logger.debug("doSignUp failed by backResult:" + backResult);
			return "redirect:/user/sign_up";
		}
		try {
			userService.saveUser(user);
		} catch (Exception e) {
			logger.debug("doSignUp failed");
			return "redirect:/user/sign_up";
		}
		logger.debug("doSignUp succ");
		return "redirect:/user/login";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model) {
		logger.debug("Into edit");
		User user = userService.findLoginUser();
		model.addAttribute("user", user);
		model.addAttribute("departmentList", userService.getDepartmentInformations());
		logger.debug("edit succ");
		return "/user/edit";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String doEdit(User user) {
		logger.debug("Into doEdit, user:" + user);
		userService.updateUser(user);
		return "redirect:/user/edit";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public ResponseEntity<MessageDto> uploadFiles(MultipartHttpServletRequest request) {
		logger.debug("into upload");
		List<MultipartFile> pictures = request.getFiles("files");
		try {
			User user = userService.findLoginUser();
			Integer fileId = userService.uploadFiles(pictures, user);
			if (fileId != null) {
				return ResponseEntity.accepted().body(new MessageDto(fileId.toString()));
			} else {
				return ResponseEntity.badRequest().body(new MessageDto("failed"));
			}
		} catch (Exception e) {
			return ResponseEntity.badRequest().body(new MessageDto("failed"));
		}

	}

//	@RequestMapping(value = "/list", method = RequestMethod.GET)
//	public String list(Model model) {
//		users.put("user1", new User("user1@sjtu.edu.cn", "password1", "user1", 1));
//		users.put("user2", new User("user2@sjtu.edu.cn", "password2", "user2", 1));
//		users.put("user3", new User("user3@sjtu.edu.cn", "password3", "user3", 1));
//		users.put("user4", new User("user4@sjtu.edu.cn", "password4", "user4", 1));
//		model.addAttribute("users", users);
//		return "user/show";
//
//	}

//	/**
//	 * 例子: form表单提交值 Sample: Form submit
//	 */
//	@RequestMapping(value = "/create", method = RequestMethod.GET)
//	public String create(Model model) {
//		model.addAttribute("user", new User());
//		// 服务器端跳转
//		return "user/create";
//	}

//	@RequestMapping(value = "/create", method = RequestMethod.POST)
//	public String create(@Validated User user, BindingResult backResult) {
//		System.out.println(backResult);
//		if (backResult.hasErrors()) {
//			return "/user/create1";
//		}
//		users.put(user.getUserName(), user);
//		// 客户端跳转
//		return "redirect:/user/list";
//		// return "redirect:/user/create1";
//	}
//
//	/**
//	 * 例子: JSR303 form表单提交值 Sample: JSR303 Form submit
//	 */
//	@RequestMapping(value = "/create1", method = RequestMethod.GET)
//	public String create1(@ModelAttribute("user") User user) {
//
//		return "user/create1";
//	}
//
//	@RequestMapping(value = "/create1", method = RequestMethod.POST)
//	// 验证model权限
//	// 一定要紧跟Validated写
//	public String create1(@ModelAttribute("user") @Validated User user, BindingResult backResult) {
//		System.out.println(backResult);
//		if (backResult.hasErrors()) {
//			return "/user/create1";
//		}
//		users.put(user.getUserName(), user);
//		// 客户端跳转
//		return "redirect:/user/list";
//		// return "redirect:/user/create1";
//	}
//
//	@RequestMapping(value = "/{userName}", method = RequestMethod.GET)
//	public String show(@PathVariable String userName, Model model) {
//		model.addAttribute(users.get(userName));
//		return "user/show";
//	}




}
