package cn.edu.sjtu.iasdsp.Spring;
/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年8月3日 下午9:48:14
* @version 
* Introduction
*/
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = {"cn.edu.sjtu.iasdsp.dao", "cn.edu.sjtu.iasdsp.model", "cn.edu.sjtu.iasdsp.shiro"})
public class AppConfig {
}