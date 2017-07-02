
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav">

				<li>
				    <%= link_to image_tag("/assets/LOGO_2_w.png", :style => "width: 90px; height: 25px;"), root_path, :class => "navbar-brand" %>
				</li>
				<li>
				    <%= link_to 'Search', search_path(:search_content => "", :search_for => "model") %>
				</li>
				<li class="dropdown">
				    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				        Create <span class="caret"></span>
				    </a>
					<ul class="dropdown-menu" role="menu">
						<li><%= link_to 'Create Model', new_workflow_information_path %></li>
						<li><%= link_to 'Create Analytics Application', new_task_path %></li>
					</ul>
				</li>
				<li><%= link_to 'Analytics Applications', tasks_all_path%></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown">History <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><%= link_to 'Model', history_model_path %></li>
						<li><%= link_to 'Running case', history_use_case_path %></li>
						<li><%= link_to 'Running record', history_running_record_path %></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<% if user_signed_in? %>
				<li></li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown"> <% if not current_user.user_picture == nil %>
						<%= image_tag("/assets/"+current_user.user_picture.name, :style => "width: 25px; height: 25px;") %>
						<% end %> &nbsp; <%= current_user.user_name %> <span class="caret"></span>
				</a>
					<ul class="dropdown-menu" role="menu">
						<li><%= link_to 'Edit account', edit_user_registration_path %></li>
						<li><%= link_to 'Sign out', destroy_user_session_path, :method=>'delete' %></li>
					</ul></li>
				<% else %>
				<li><%= link_to 'Sign in', new_user_session_path %></li>
				<li><%= link_to 'Sign up', new_user_registration_path %></li>
				<% end %>
			</ul>
		</div>
		<!--/.navbar-collapse -->
	</div>
</nav>

<br />

<h1>Toolbar</h1>