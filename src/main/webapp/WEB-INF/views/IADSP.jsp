<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!-- saved from url=(0022)http://localhost:3000/ -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        
        <!-- Latest compiled and minified CSS -->

        <!-- Latest compiled and minified JavaScript -->

        <!-- Latest compiled and minified Locales -->
        <title>IADSP</title>
        
       <spring:url value="/resources/bootstrap.min.css" var="bootstrapCSS" />
<spring:url value="/resources/bootstrap.min.js" var="bootstrapJS" />
<spring:url value="/resources/" var="IASDSPFiles" />
<link href="${bootstrapCSS}" rel="stylesheet" />
<script src="${bootstrapJS}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<spring:url value="/resources/IADSP_files" var="IASDSPFiles" />

<link rel="stylesheet" media="all" href="${IASDSPFiles}/animate.self-066dd43afaa891fb6cb9c597e6bd2379f2546a1489393639eafe04c3dadee305.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/app.self-11d633b9c954c7fff4f49319ba815b1bdead55896a1998c9fc9a804c36465e5a.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/bpmn-embedded.self-4236005d47afd94bfeb0e32db44efdffff31719f466e63b60366a546cc82e9ae.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/bpmn.self-5b9d6e2c730b76c65fc4115f935881741ad43b31db7224715c3d23ef750f173a.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/bs-is-fun.self-e07bed38782602dc833124f00374cfac3d3ab63b0b3cc4862166915b645d8c53.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/chl.self-d6c826e10d55dc25021f3860cb7e605fbe4ce7c90a48cf6cbc753aaabac422e2.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/data_pre_processing.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/diagram-js.self-c0ad878669fc5ff6a6f72f25cfcc5bd8887e8bf1c8677333fb55f37baed1c7f6.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/nodes.self-b60acab5af8d245ed2b3012f77d11d8d207d8eada27756badaf4ef05770d60f6.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/landing-page.self-bff4d9598c72b77bf8feea237431695c89549b4e7ce8657f8ad3eee4aa3e457e.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/metro-bootstrap.self-22f2f559236aba6d86f8530439ccbaa41ec1c7d0e3d3815386d9c3306d81201b.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/node.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/pace-theme-minimal.self-c3fa81e7bb1aa493e2e58a9c773a9deb6b201153627812e91d51ae75fc80e03f.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/properties_panel.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/star-rating.min.self-a09275bdd558765933ea8cbc91399cd016b6ff978a056a7adc6a3adc6eff48d5.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/task.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/theme-peter-river.self-d305459f851f14b78122bb0d14fb5eb330b4ded98f6f17c952d51e9d09b5ddd7.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/user_picture.self-e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="${IASDSPFiles}/vendor.self-1eff4ed9c781891b0992b219732b4e00e9b84bebb29302cb0c42975ec3aa0767.css" data-turbolinks-track="false">
<link rel="stylesheet" media="all" href="/resources/IADSP_files/application.self-d37aded1420480754afd6807ce0418640c9c4938f697de05350a50af2b6c1b34.css" data-turbolinks-track="false">
        <!--
        <link href="/stylesheets/chl.min.css?0.8884574542486668" media="screen" rel="stylesheet" type="text/css"/>
        <link href="/stylesheets/pace-theme-minimal.css?0.8871248039298881" media="screen" rel="stylesheet" type="text/css"/>
        <link href="/stylesheets/theme-peter-river.css?0.9127504200075666" media="screen" rel="stylesheet" type="text/css"/>
        <link href="/stylesheets/star-rating.min.css?0.989299425922209" media="screen" rel="stylesheet" type="text/css"/>
        <link href="/stylesheets/bs-is-fun.min.css?0.13261520210876487" media="screen" rel="stylesheet" type="text/css"/>
        -->
        <script src="/resources/IADSP_files/jquery.self-bd7ddd393353a8d2480a622e80342adf488fb6006d667e8b42e4c0073393abee.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/jquery_ujs.self-784a997f6726036b1993eb2217c9cb558e1cbb801c6da88105588c56f13b466a.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/data_pre_processing.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/history.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/home.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/ie-emulation-modes-warning.self-15ed8024d20e9f3685c0cc986bb2c3900fb3cc6f686bfe0a92d1b56fa3a06a2e.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/ie10-viewport-bug-workaround.self-ce01c41255d7e61cc44e865184559085737a98cf6911ef67f915692152b88852.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/juheweb.com.self-eff518fd30452d0cd7b4c6d7ebd45b9b723870f7dcafd86f0d036ec74f2220eb.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/node.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/process.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/properties_panel.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/search.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/star-rating.self-c616c2a416fe66ac0caab2bc3fb0961336aeed2a60ce53ef5bd77a71a109b663.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/star-rating.min.self-20125b2d255be1b87a42e0e817894c46cdab6b4ae19d94563906b1102cfcced1.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/task.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/user_picture.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/workflow_comments.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/workflow_informations.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/workflow_privileges.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/preinit.self-78bfc36da60c92b71799c55e0d8c68780f19caf3cf4e4e0e3bca8c9014a0d83d.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/tinymce.self-d7f6811cb92d1e7638015669d3ec90175d4cb1309ecad56ff9d757b25fe18172.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/tinymce.self-75a11da44c802486bc6f65640aa48a730f0f684c5c07a42ba3cd1735eb3fb070.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/transition.self-6ad2488465135ab731a045a8ebbe3ea2fc501aed286042496eda1664fdd07ba9.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/alert.self-742145c5bb847aafdadc6e339be795628f8bc25f177e851f03a8c42278eb0312.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/button.self-126ac9bf0e7f2d8568f8da3a00fd5f0fac6eae0946331003370161fbf8d7975e.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/carousel.self-e47323f363ceb3dc0bdbce05e36e709ed428e339833a41140a85cb0af24b8127.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/collapse.self-2eb697f62b587bb786ff940d82dd4be88cdeeaf13ca128e3da3850c5fcaec301.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/dropdown.self-561cca1cbaf67474e01e9536f106bad541594860a6df997004591c1c1957a147.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/modal.self-3e78617ade5663314b7ee0ea10375a5b34d59ffbade44939e3f2a4e4ef2019b3.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/tab.self-5bf7078b682f8b131332eefa46b45fa5eff2eca745fc0d03e2991450888f7c28.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/affix.self-6d6f1a7fc5c8aabf3547fa1b794fab6268f54bc55ad815e55873c71f52513517.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/scrollspy.self-969f3c5f48cdf1e439c7fa1154c13b948715f5c689f87837c0b64521d3b46ef6.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/tooltip.self-05afb177e08f98997ccfc84fa08a215e4b27d48d5fe4d049080675e9dffd8199.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/popover.self-0aa93860b59fe7393f1dd490f54b3cb994f9d6155adffce034d4e14ae361b041.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/bootstrap-sprockets.self-fbfa5ad7d9aa0afe439ec4ff3883acc4cb92b62cb67c40d674320c9aa1d4642d.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/bootstrap-table.self-ee6f8f07aace096f840529f384a0a037b12e4340cad18d5ea374ddcbc57f4cf2.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/cocoon.self-05633fd25797688a657c08b26b8d4217031ee589f5ca76f0a57c11ac7d0e76ec.js" data-turbolinks-track="false"></script>
<script src="/resources/IADSP_files/application.self-38af4f8f79ff88c6199dd0dce4b216bd695f69749f4779bb1cf8bb7b1760ed44.js" data-turbolinks-track="false"></script>
        <meta name="csrf-param" content="authenticity_token">
<meta name="csrf-token" content="BdPO1sRvlCDwxaZUKWuQd1VJJdTcgRCU+awaQEcMfjZNKm3Im4nqNVuKSs6miv817+hS8XtfmiEJGVtsbT2Pvg==">
        <link rel="Shortcut Icon" href="http://localhost:3000/assets/LOGO_2_s.png">
    <style id="style-1-cropbar-clipper">/* Copyright 2014 Evernote Corporation. All rights reserved. */
.en-markup-crop-options {
    top: 18px !important;
    left: 50% !important;
    margin-left: -100px !important;
    width: 200px !important;
    border: 2px rgba(255,255,255,.38) solid !important;
    border-radius: 4px !important;
}

.en-markup-crop-options div div:first-of-type {
    margin-left: 0px !important;
}
</style></head>

    <body data-no-turbolink="true">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!--
            <div class="navbar-header">
                <a class="navbar-brand" href="/">IADSP</a>
            </div>
            -->
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">

                    <li>
                    <a class="navbar-brand" href="http://localhost:3000/"><img style="width: 90px; height: 25px;" src="./IADSP_files/LOGO_2_w.png" alt="Logo 2 w"></a>
                    </li>
                    <li>
                    <a href="http://localhost:3000/search?search_content=&amp;search_for=model">Search</a>
                    </li>
                    <li class="dropdown">
                    <a href="http://localhost:3000/#" class="dropdown-toggle" data-toggle="dropdown">Create <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="http://localhost:3000/workflow_informations/new">Create Model</a></li>
                        <li><a href="http://localhost:3000/task/new">Create Analytics Application</a></li>
                    </ul>

                    </li>
                    <li>
                    <a href="http://localhost:3000/tasks/all">Analytics Applications</a>
                    </li>
                    <li class="dropdown">
                    <a href="http://localhost:3000/#" class="dropdown-toggle" data-toggle="dropdown">History <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="http://localhost:3000/history/model">Model</a></li>
                        <li><a href="http://localhost:3000/history/use_case">Running case</a></li>
                        <li><a href="http://localhost:3000/history/running_record">Running record</a></li>
                    </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                        <li><a href="http://localhost:3000/users/sign_in">Sign in</a></li>
                        <li><a href="http://localhost:3000/users/sign_up">Sign up</a></li>
                </ul>
            </div><!--/.navbar-collapse -->
        </div>
        </nav>

        <br>
        <!-- Header -->
<a name="about"></a>
<div class="intro-header">
    <div class="container">

        <div class="row">
            <div class="col-lg-12">
                <div class="intro-message">
                    <img src="./IADSP_files/LOGO_2_w.png" class="center-block" alt="image" style="width: 450px; height: 125px;">
                    <h3>Intelligent Analytic Service Development and Sharing Platform</h3>
                    <div class="row">
                        <div class="col-lg-offset-3 col-lg-6">
                            <hr>
                            <form class="form-inline" role="form" action="http://localhost:3000/search" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="BdPO1sRvlCDwxaZUKWuQd1VJJdTcgRCU+awaQEcMfjZNKm3Im4nqNVuKSs6miv817+hS8XtfmiEJGVtsbT2Pvg==">
                                <select class="form-control" style="width:20%" name="search_request[search_for]" id="search_request_search_for"><option value="model">Model</option>
<option value="use_case">Running case</option></select>
                                <div class="input-group" style="width:79%">
                                    <input class="form-control" placeholder="Search for ..." type="text" name="search_request[search_content]" id="search_request_search_content">
                                    <div class="input-group-btn">
                                        <input type="submit" name="commit" value="Search" class="btn btn-primary btn-block">
                                    </div><!-- /btn-group -->
                                </div><!-- /input-group -->
</form>                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>
<!-- /.intro-header -->

<!-- Page Content -->

<a name="services"></a>
<div class="content-section-a">

    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-sm-6">
                <hr class="section-heading-spacer">
                <div class="clearfix"></div>
                <h2 class="section-heading">What is the platform?</h2>
                <p class="lead">This is a platform to help you analysis the data set, and share your model to your partner.</p>
                <a class="btn btn-default" href="http://localhost:3000/Example1.htm" role="button">Start now »</a>
            </div>
            <div class="col-lg-5 col-lg-offset-2 col-sm-6">
                <img class="img-responsive" src="./IADSP_files/Workflow.jpg" alt="">
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>
<!-- /.content-section-a -->

<div class="content-section-b">
    <div class="container">
        <div class="row">
            <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6">
                <hr class="section-heading-spacer">
                <div class="clearfix"></div>
                <h2 class="section-heading">Turtorial</h2>
                <p class="lead">Here you can learn how to use the platform.</p>
                <a class="btn btn-default" href="http://localhost:3000/Example1.htm" role="button">Learn More »</a>
            </div>
            <div class="col-lg-5 col-sm-pull-6  col-sm-6">
                <img class="img-responsive" src="./IADSP_files/business-man-writing-data-analysis.jpg" alt="">
            </div>
        </div>

    </div>
    <!-- /.container -->

</div>
<!-- /.content-section-b -->







        <div class="container">
            <hr>
            <p>@ SJTU 2017</p>
            <p class="notice"></p>
            <p class="alert"></p>
        </div> <!-- /container -->

    


</body></html>