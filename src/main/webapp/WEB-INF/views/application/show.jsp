<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>
<<br/>
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
									<a href="#content" aria-controls="content" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span> Introduction
									</a>
                                </li>
                                <li role="presentation" >
									<a href="#model" aria-controls="model" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-bookmark" aria-hidden="true"></span> Model
									</a>
                                </li>
          
                                <li role="presentation" >
									<a href="#forum" aria-controls="forum" role="tab" data-toggle="tab">
										<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span> Forum
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
                    <h2>${showApplicationDto.title}</h2>
                </div>
                <div class="col-md-8">
                    <h4>
                        <small>Revised on ${showApplicationDto.time} by ${showApplicationDto.authorName}</small>
                    </h4>
                </div>
                <div class="col-md-4">
                    <div class="btn-group btn-group-justified  btn-group-sm"
                        role="group" aria-label="...">
                        <a type="button" class="btn btn-primary btn-sm"
                            href="<c:url value="/application/${showApplicationDto.path}/edit"/>"> Edit </a>
                        <!-- TODO change delete method -->
                        <a type="button" class="btn btn-danger btn-sm"
                            href="<c:url value="/application/${showApplicationDto.path}/delete"/>"> Delete </a>
                    </div>
                </div>
            </div>
            <hr/>
            <div class = "row">
                <!-- Nav tabs -->
                <div class="tab-content">
                   <div role="tabpanel" class="tab-pane active " id="content">
						<%@ include file="show_content.jsp"%>
                    </div>

                    <div role="tabpanel" class="tab-pane " id="model">
						<%@ include file="show_model.jsp"%>
                    </div>
                    <div role="tabpanel" class="tab-pane " id="forum">
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
                            <div class = "row">
								<div class="col-md-12">
                            
									<s:url value="/resources/image/user.jpg" var="userImg" />
									<img src="${userImg}" alt="" style="width: 40px; height: 40px;">
									<s:url value="/resources/image/user1.png" var="userImg1" />
									<img src="${userImg1}" alt="" style="width: 40px; height: 40px;">
									<s:url value="/resources/image/user3.jpg" var="userImg3" />
									<img src="${userImg3}" alt="" style="width: 40px; height: 40px;">
							   </div>
                            </div>
                            <div class = "row">
                                <div class="col-md-12"> &nbsp;</div>
                            
                                <div class="col-md-12">
                                    
									<s:url value="/resources/image/user4.jpg" var="userImg4" />
									<img src="${userImg4}" alt="" style="width: 40px; height: 40px;">
									<s:url value="/resources/image/user8.jpg" var="userImg8" />
									<img src="${userImg8}" alt="" style="width: 40px; height: 40px;">
								</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div> <!-- /container -->


<%@ include file="../layouts/footer.jsp"%>
