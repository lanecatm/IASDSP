
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li>
						<a class="navbar-brand" href="/home/index.jsp">
							<s:url value="/resources/image/LOGO_2_w.png" var="logo" />
						
							<img style="width: 90px; height: 25px;" src="${logo}" alt="Logo 2 w">
						</a>
                    
                    </li>
                    <li>
                        <a href="#"> Search </a>                    
                    </li>
                    <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">Create <span class="caret"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li>
								<a href="#"> Create Model </a>
							</li>
							<li>
								<a href="#"> Create Analytics Application </a>
							</li>
						</ul>
                    </li>
                    <li>
						<a href="#"> Analytics Applications </a>
                    </li>
                    <li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							History <span class="caret"></span>
						</a>
                    <ul class="dropdown-menu" role="menu">
                        <li>Model', history_model_path %></li>
							<a href="#"> Models </a>
							<a href="#"> Analytics Applications </a>
                        <li>
							<a href="#"> Running case </a>
                        </li>
                        <li>
							<a href="#"> Running record </a>
                        </li>
                    </ul>
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

						<li>
							<a href="#"> Sign in </a>
						</li>
						<li>
							<a href="#"> Sign up </a>
						</li>
                </ul>
            </div><!--/.navbar-collapse -->
        </div>
        </nav>

	<br/>