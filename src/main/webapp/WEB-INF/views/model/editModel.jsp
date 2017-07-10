<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ include file="../layouts/application.jsp"%>

<br/>
<div class="container">
    <div class = "row">
        <div class="col-md-offset-2 col-md-8">
            <div class="row">
                <h3>
                    ${showModelDto.title}
                </h3>
                <h4>
                    <small>${showModelDto.introduction}</small> 
                </h4>
                <hr/>
            </div>
        </div>
    </div>
    <div class = "row">
        <div class="col-md-offset-2 col-md-8">
            <ul class="nav nav-justified step step-square"  >
                <li role="presentation" 
                class="info"
                >
                <a href="#information" aria-controls="information" role="tab" data-toggle="tab">Basic Information</a>
                </li>
                <li role="presentation" 
                class="diagram"
                >
                <a href="#diagram" aria-controls="diagram" role="tab" data-toggle="tab">Flow diagram</a>
                </li>
                <li role="presentation"
                class="juridiction"
                >
                <a href="#jurisdiction" aria-controls="input" role="tab" data-toggle="tab">Authorization</a>
                </li>
                <li role="presentation"
                class="version"
                >
                <a href="#version" aria-controls="version" role="tab" data-toggle="tab">Version</a>
                </li>
            </ul>
        </div>
    </div>

    <div class = "row">
        <br/>
        <br/>
        <!-- Nav tabs -->
        <!-- Tab panes -->
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane info" id="information">
                <div class="col-md-offset-3 col-md-6">
                    <div class = "row">
                        <%@ include file="editModelInfo.jsp"%>
                    </div>
                </div>
            </div><!-- tab -->
            <div role="tabpanel" class="tab-pane diagram" id="diagram">
                <div class="col-md-offset-3 col-md-6">
                    <div class = "row">
                          <%@ include file="editModelDiagram.jsp"%>
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane jurisdiction" id="jurisdiction">
                <div class="col-md-offset-3 col-md-6">
                    <div class = "row">
                        <%@ include file="editModelAuthorization.jsp"%>
                    </div>
                </div>
            </div>
            <div role="tabpanel" class="tab-pane version" id="version">
                <div class="col-md-offset-3 col-md-6">
                    <div class = "row">
                      <%@ include file="editModelVersion.jsp"%>
                    </div>
                </div>
            </div>
        </div>

    </div>
    
 
    
</div>
    </div>
</div> <!-- /container -->


