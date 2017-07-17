package cn.edu.sjtu.iasdsp.common;

import org.springframework.core.convert.converter.Converter;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月16日 下午10:14:54
* @version 
* Introduction
*/
public class StringToSearchForType implements Converter<String, SearchForType> {

	public SearchForType convert(String source){
        return SearchForType.get(source);
	}
}
