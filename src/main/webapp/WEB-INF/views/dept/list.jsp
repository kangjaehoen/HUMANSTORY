<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
 <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">Tables</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				Board List Page
				<button id='regBtn' type="button" class="btn btn-xs pull-right">Register
					New employee</button>
				<button id='modiBtn' type="button" class="btn btn-xs pull-right">
					 Update employee </button>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>체크박스 </th>
							<th>번호</th>
							<th>부서명</th>
							
						</tr>
					</thead>

					<c:forEach items="${list}" var="dept">
						<tr>
							<td><input type="checkbox" class="empCheckbox" value="<c:out value='${dept.deptNum}' />"></td>
							<td><c:out value="${dept.deptNum}" /></td>
							<td><c:out value="${dept.deptName}" /></td>
							
						</tr>
					</c:forEach>
				</table>


<script type="text/javascript">
	$(document)
			.ready(
					function() {

						var result = '<c:out value="${result}"/>';

						checkModal(result);

						history.replaceState({}, null, null);

						function checkModal(result) {

							if (result === '' || history.state) {
								return;
							}

							if (parseInt(result) > 0) {
								$(".modal-body").html(
										"게시글 " + parseInt(result)
												+ " 번이 등록되었습니다.");
							}

							$("#myModal").modal("show");
						}

						$("#regBtn").on("click", function() {

							self.location = "/dept/register";

						});
						$("#modiBtn").on("click", function() {
							
							var selectedDeptNums = [];
							$(".empCheckbox:checked").each(function(){
								selectedDeptNums.push($(this).val());
							});
							if(selectedDeptNums.length == 0){
								console.log("수정할 부서를 선택해주세요.");
								return;
							}
							if(selectedDeptNums.length>1){
								console.log("다중 선택은 지원되지 않습니다.");
								return;
							}
							
							var selectedDeptNum = selectedDeptNums[0];
							
							

							self.location = "/dept/modify.jsp?deptNum="+selectedDeptNum;

						});

						var actionForm = $("#actionForm");

						$(".paginate_button a").on(
								"click",
								function(e) {

									e.preventDefault();

									console.log('click');

									actionForm.find("input[name='pageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						$(".move")
								.on(
										"click",
										function(e) {

											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='deptNum' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/dept/get");
											actionForm.submit();

										});

						var searchForm = $("#searchForm");

						$("#searchForm button").on(
								"click",
								function(e) {

									if (!searchForm.find("option:selected")
											.val()) {
										alert("검색종류를 선택하세요");
										return false;
									}

									if (!searchForm.find(
											"input[name='keyword']").val()) {
										alert("키워드를 입력하세요");
										return false;
									}

									searchForm.find("input[name='pageNum']")
											.val("1");
									e.preventDefault();

									searchForm.submit();

								});

					});
</script>
