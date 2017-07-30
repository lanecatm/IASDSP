<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
canvas {
	-moz-user-select: none;
	-webkit-user-select: none;
	-ms-user-select: none;
}
</style>
<div class="col-md-10 col-md-offset-1">
	<div id="container" style="width: 100%;">
		<canvas id="canvas"></canvas>
	</div>
</div>
<script>
	var barChartData = {
		labels : ${showModelDto.versionLabelListStr},
		datasets : [ {
			label : 'Execution times',
			backgroundColor : "rgba(255, 99, 132, 0.5)",
			borderColor : "rgba(255, 99, 132, 1)",
			borderWidth : 1,
			yAxisID : "y-axis-1",
			data : ${showModelDto.versionTimeListStr}
		}, {
			label : 'Average star',
			backgroundColor : "rgba(54, 162, 235, 0.5)",
			borderColor : "rgba(54, 162, 235, 1)",
			borderWidth : 1,
			yAxisID : "y-axis-2",
			data : ${showModelDto.versionStarListStr}
		} ]

	};

	window.onload = function() {
		var ctx = document.getElementById("canvas").getContext("2d");
		window.myBar = new Chart(ctx, {	
			type: 'bar',		
			data : barChartData,
			options : {
				responsive : true,
				legend : {
					position : 'top',
				},
				title : {
					display : true,
					text : 'Version Execute History'
				},
				scales : {
					yAxes : [ {
						type : "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
						display : true,
						position : "left",
						id : "y-axis-1",
						ticks: {
					        beginAtZero: true,
			                callback: function(value) {if (value % 1 === 0) {return value;}}

			            }
		            
					}, {
						type : "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
						display : true,
						position : "right",
						id : "y-axis-2",
						gridLines : {
							drawOnChartArea : false
						},
                        ticks: {
                            min: 0,
                            max: 5,
                            callback: function(value) {if (value % 1 === 0) {return value;}}
                        }
					} ]
				}
			       
			}
		});

	};
</script>