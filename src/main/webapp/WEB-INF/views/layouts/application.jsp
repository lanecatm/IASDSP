<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>IADSP</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<s:url value="/resources/stylesheet/bootstrap.min.css" var="bootstrapCss" />
	<s:url value="/resources/stylesheet/animate.css" var="animateCss" />
	<s:url value="/resources/stylesheet/app.css" var="appCss" />
	<s:url value="/resources/stylesheet/bs-is-fun.css" var="bsIsFunCss" />
	<s:url value="/resources/stylesheet/chl.css" var="chlCss" />
	<s:url value="/resources/stylesheet/diagram-js.css" var="diagramCss" />
	<s:url value="/resources/stylesheet/landing-page.css" var="landingPageCss" />
	<s:url value="/resources/stylesheet/metro-bootstrap.css" var="metroBootstrapCss" />
	<s:url value="/resources/stylesheet/pace-theme-minimal.css" var="paceThemeMinimalCss" />
	<s:url value="/resources/stylesheet/star-rating.min.css" var="starRatingCss" />
    <s:url value="/resources/stylesheet/theme-peter-river.css" var="themePeterRiverCss" />
    <s:url value="/resources/stylesheet/vendor.css" var="vendorCss" />

    <link rel="stylesheet" media="all" href="${animateCss}"/>
    <link rel="stylesheet" media="all" href="${appCss}"/>
    <link rel="stylesheet" media="all" href="${bsIsFunCss}"/>
    <link rel="stylesheet" media="all" href="${chlCss}"/>
    <link rel="stylesheet" media="all" href="${landingPageCss}"/>
    <link rel="stylesheet" media="all" href="${metroBootstrapCss}"/>
    <link rel="stylesheet" media="all" href="${paceThemeMinimalCss}"/>
    <link rel="stylesheet" media="all" href="${starRatingCss}"/>
    <link rel="stylesheet" media="all" href="${themePeterRiverCss}"/>
    <link rel="stylesheet" media="all" href="${vendorCss}"/>

    <s:url value="/resources/javascript/bootstrap.min.js" var="bootstrapJs" />
    <s:url value="/resources/javascript/application.js" var="applicationJs" />
    <s:url value="/resources/javascript/ie-emulation-modes-warning.js" var="ieEmulationModesWarningJs" />
    <s:url value="/resources/javascript/ie10-viewport-bug-workaround.js" var="ie10ViewportBugWorkaroundJs" />
    <s:url value="/resources/javascript/juheweb.com.js" var="juhewebJs" />
    <s:url value="/resources/javascript/star-rating.min.js" var="starRatingJs" />


	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script src="${bootstrapJs}"></script>
	<script src="${applicationJs}"></script>
	<script src="${ieEmulationModesWarningJs}"></script>
	<script src="${ie10ViewportBugWorkaroundJs}"></script>
	<script src="${juhewebJs}"></script>
	<script src="${starRatingJs}"></script>


    <s:url value="/resources/image/LOGO_2_s.png" var="logoSmall" />
	<link rel="Shortcut Icon" href=${logoSmall}/>
</head>
<body>
<%@ include file="toolbar.jsp"%>
