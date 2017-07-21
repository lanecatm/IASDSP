<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<hr />

<script type="text/javascript">
	$(function() {
		$(".radio").click(function() {
			if ($("#share_use_case").is(":checked")) {
				$("#share_use_case_form").css("display", "none");
				//$("#return_button").css("display", "block");
			} else {
				$("#share_use_case_form").css("display", "block");
				//$("#return_button").css("display", "none");
			}
		});
	});
</script>

<div class="panel panel-default">
	<div class="panel-heading">Rating</div>
	<div class="panel-body">
		<input id="input-21e" value="0" type="number" class="rating" min=0 max=5 step=0.5 data-size="xs" >
	</div>
</div>

<div class="panel panel-default">
	<div class="panel-heading">Share</div>
	<div class="panel-body">
		<form class="form-horizontal">
			<div class="form-group">
				<div class="col-md-12">
					<!-- <h4>Share</h4> -->
					<div class="radio">
						<label> <input type="radio" name="share_use_case"
							value="false" id="share_use_case" checked /> I don't want to
							share this running case.
						</label>

					</div>
				</div>
				<div class="col-md-12">
					<div class="radio">
						<label> <input type="radio" name="share_use_case"
							value="true" /> I want to share this running case.
						</label>
					</div>

				</div>
			</div>
		</form>





		<div id="share_use_case_form" style="display: none">

			<form class="form-horizontal">
				<div class="form-group">

					<label class="col-md-12">Running case name</label>
					<div class="col-md-12">
						<input type="text" class="form-control" />
					</div>
				</div>
				<!--  <input path=""/> --defaultdiv>
		</div>
		<div class="form-group">
			<label class="col-md-12">Running case description</label>
			<div class="col-md-12">
				<%--  <sf:textarea path=""/> --%>
			</div>
		</div>
		<!-- 选择是否带上文件 -->

				<!-- 选择执行的用户组 -->
				<div class="form-group">

					<label class="col-md-12">Shared User Group</label>
					<div class="col-md-12">
						<select class="form-control"></select>
						<%--  <sf:select path="">
                </sf:select> --%>
					</div>

				</div>
				<div class="form-group">

					<div class="col-md-12">
						<label><input type="checkbox" /> Share running case with
							the input file</label>
					</div>

				</div>
			</form>
		</div>
	</div>
</div>
<form class="form-horizontal">
	<div id="return_button">
		<div class="form-group">
			<div class="col-md-12">
				<hr />
			</div>
			
			<div class="col-md-4">
                <button class="btn btn-default btn-sm btn-block">Back to model</button>
            </div>
			<div class="col-md-4">
                <button class="btn btn-default btn-sm btn-block">Back to application</button>
            </div>
			<div class="col-md-4">
				<button class="btn btn-primary btn-sm btn-block">Save</button>
			</div>
		</div>
	</div>
</form>