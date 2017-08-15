
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  

<br />
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li><s:url value="/" var="homePageUrl" /> <a
					class="navbar-brand" href="${homePageUrl}"> <s:url
							value="/resources/image/LOGO_2_w.png" var="logo" /> <img
						style="width: 90px; height: 25px;" src="${logo}" alt="Logo 2 w">
				</a></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">Create <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><s:url value="/model/create" var="createModelUrl" /> <a
							href="${createModelUrl}"> Create Model </a></li>
						<li><s:url value="/application/create"
								var="createApplicationUrl" /> <a href="${createApplicationUrl}">
								Create Analytics Application </a></li>
					</ul></li>
				<li><s:url value="/search/model" var="searchModelUrl" /> <a
					href="${searchModelUrl }"> Model </a></li>
				<li><s:url value="/search/application/"
						var="searchApplicationUrl" /> <a href="${searchApplicationUrl}">
						Analytics Application </a></li>
				<li class="dropdown">
				    <s:url value="/my_space/show/" var="mySpaceUrl" />
				    <a href="${mySpaceUrl}">
					<!-- class="dropdown-toggle" data-toggle="dropdown"> --> 
					My space 
					<%-- <span class="caret"></span> --%>
				</a>
					<!-- <ul class="dropdown-menu" role="menu">
						<li><a href="#"> Models </a></li>
						<li><a href="#"> Analytics Applications </a></li>
						<li><a href="#"> Running case </a></li>
						<li><a href="#"> Running record </a></li>
					</ul> -->
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<!-- 有用户登录 -->
				<!-- 
                        <li>
                        </li>
                        <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            < if not current_user.user_picture == nil >
                                <= image_tag("/assets/"+current_user.user_picture.name, :style => "width: 25px; height: 25px;") >
                            < end >
                            &nbsp;
                            <= current_user.user_name >
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li>
                                <= link_to 'Edit account', edit_user_registration_path >
                            </li>
                            <li>
								<= link_to 'Sign out', destroy_user_session_path, :method=>'delete' >
							</li>
                        </ul>
                        </li>
					 -->
				<!-- 没有用户登录 -->

				<s:url value="/user/login" var="loginUrl" /> 
				<s:url value="/user/sign_up" var="signUpUrl" /> 
				
                <shiro:guest>  
				<li><a href="${loginUrl}"> Sign in </a></li>
				<li><a href="${signUpUrl}"> Sign up </a></li>
				</shiro:guest>
				
				<shiro:user>
				<li class="dropdown">
				    <a href="#" class="dropdown-toggle"
                        data-toggle="dropdown">
                        <shiro:principal type="java.lang.String"/>  
						<span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li>
                            <s:url value="/user/edit" var="settingUrl" /> 
                            <a href="${settingUrl}">  Setting </a>
                        </li>
                        <li>
                            <s:url value="/user/logout" var="logoutUrl" /> 
                            <a href="${logoutUrl}">  Logout </a>
                        </li>
<%--                         <li><s:url value="/" var="" /> 
                            <a href=""> Myspace</a>
                        </li> --%>
                    </ul>
                  </li>
				</shiro:user>
			</ul>
		</div>
		<!--/.navbar-collapse -->
	</div>
</nav>
<br />