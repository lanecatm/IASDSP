<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>


	  <sf:form  method="POST" modelAttribute="editModelDto" role="form" action="updateVersion"  cssClass="form-inline"  >
                    <div class="form-group">
                        <label class="col-md-12 ">Version name</label>
                        </br>
                        </br>
                        <div class="col-md-12">
                         	<sf:input path="versionName" cssClass = "form-control" cssStyle = "width : 300%"/>
                        </div>
                    </div>
                    <div class="form-group">
                    </br>
                        <label class="col-md-12">Version Description<small class="text-muted">(optional)</small></label>
                        <div class="col-md-12">
                        </br>
                           	<sf:textarea path="versionDescription" cssClass = "form-control" cssStyle = "width : 140%"/>
                        </div>
                    </div>              
                    <hr/>              
                    <div class="form-group">
                        <div class="col-md-12"></div>
                        <div class="col-md-12">
                            	<input class="btn btn-primary btn-block" type="submit" value="Create" />
                        </div>
                    </div>
                </sf:form> 