<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<div class="container">
    <div class = "row">
        <div class="col-md-2">
            <div class = "row">
                <div class="col-md-12">&nbsp;</div>
                <div class="col-md-12">
                    <h3>&nbsp;</h3>
                    <h3>&nbsp;</h3>

                    <div class="box-body">
                        <div class="tab-custom">
                            <ul class="nav nav-tabs nav-bordered" data-spy="affix" role="tablist">
                                <li role="presentation" class=" active ">
									<a href="#diagram" aria-controls="diagram" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Diagram
									</a>
                                </li>
                                <li role="presentation" >
									<a href="#information" aria-controls="information" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span> Information
									</a>
                                </li>
          
                                <li ro
  //  alert($("#le="presentation" >
									<a href="#version" aria-controls="version" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> All Version
									</a>
                                </li>
                                  <li role="presentation" >
									<a href="#case" aria-controls="case" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Running Case
									</a>
                                </li>
                                 <li role="presentation" >
									<a href="#execution" aria-controls="execution" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Execution History
									</a>
                                </li>
                              
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-md-8">
            <div class = "row">
                <div class="col-md-12">
                    <h1>${showModelDto.title}</h1>
                </div>
                <div class="col-md-6">
                    <h4>
                        <small>Revised on ${showModelDto.getTime()} by ${showModelmDto.getAuthorName()}</small>
                    </h4>
                </div>
                <div class="col-md-6">
                       <div class="btn-group" role="group" aria-label="...">
							  <button type="button" class="btn btn-success glyphicon glyphicon-tower"> Train</button>
							  <button type="button" class="btn btn-info glyphicon glyphicon-triangle-right"> Execute</button>
							  <button type="button" class="btn btn-warning glyphicon glyphicon-pencil">Edit</button>
							   <button type="button" class="btn btn-danger glyphicon glyphicon-trash">Delete</button>
						</div>
                </div>
            </div>
            <hr/>
             <div class = "row">
                <!-- Nav tabs -->
                <div class="tab-content">
                   <div role="tabpanel" class="tab-pane active " id="diagram">
							<%@ include file="showModelDiagram.jsp"%>
                    </div>

                    <div role="tabpanel" class="tab-pane " id="information">
						<%-- <%@ include file="show_model.jsp"%> --%>
                    </div>
                    <div role="tabpanel" class="tab-pane " id="version">
					    	<%@ include file="showModelApplication.jsp"%>
                    </div>
                      <div role="tabpanel" class="tab-pane " id="case">
							<%@ include file="showModelApplication.jsp"%>
                    </div>
                      <div role="tabpanel" class="tab-pane " id="execution">
						<%-- <%@ include file="show_forum.jsp"%> --%>
                    </div>
                </div>
            </div>
  
        </div>
            <div class="col-md-2">
            <div class = "row">
                <div class="col-md-12">&nbsp;</div>
                <div class="col-md-12">
                    <h3>&nbsp;</h3>
                    <h3>&nbsp;</h3>
                </div>
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Contributor</div>
                        <div class="panel-body">
                            <s:url value="/resources/image/user.jpg" var="userImg" />
							<img src="${userImg}" alt="" style="width: 40px; height: 40px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- /container -->


</br></br></br></br></br></br></br></br></br>
<%@ include file="../layouts/footer.jsp"%>