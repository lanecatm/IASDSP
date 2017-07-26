package cn.edu.sjtu.iasdsp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.MethodParameter;
import org.springframework.http.MediaType;
import org.springframework.http.converter.json.MappingJacksonValue;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.servlet.mvc.method.annotation.AbstractJsonpResponseBodyAdvice;

/** 
* @author xfhuang 
* @email lanecatm@sjtu.edu.cn
* @date 2017年7月19日 下午9:30:22
* @version 
* Introduction
*/
@ControllerAdvice
public class JsonpAdvice extends AbstractJsonpResponseBodyAdvice {
	  private final String[] jsonpQueryParamNames;
    public JsonpAdvice() {
        super("callback", "jsonp");
        this.jsonpQueryParamNames = new String[]{"callback"};

    }
    @Override
    protected void beforeBodyWriteInternal(MappingJacksonValue bodyContainer, MediaType contentType,
                                           MethodParameter returnType, ServerHttpRequest request, ServerHttpResponse response) {

        HttpServletRequest servletRequest = ((ServletServerHttpRequest) request).getServletRequest();
        //如果不存在callback这个请求参数，直接返回，不需要处理为jsonp
        if (ObjectUtils.isEmpty(servletRequest.getParameter("callback"))) {
            return;
        }
        //按设定的请求参数(JsonAdvice构造方法中的this.jsonpQueryParamNames = new String[]{"callback"};)，处理返回结果为jsonp格式
        for (String name : this.jsonpQueryParamNames) {
            String value = servletRequest.getParameter(name);
            if (value != null) {
                MediaType contentTypeToUse = getContentType(contentType, request, response);
                response.getHeaders().setContentType(contentTypeToUse);
                bodyContainer.setJsonpFunction(value);
                return;
            }
        }
    }
} 
