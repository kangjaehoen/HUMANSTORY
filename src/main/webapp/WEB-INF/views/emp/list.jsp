<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
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
				<button id='regBtn' type="button" class="btn btn-xs pull-left">Register
					New employee</button>
				<button id='modiBtn' type="button" class="btn btn-xs pull-right">
					Update employee</button>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>체크박스</th>
							<th>번호</th>
							<th>사원명</th>
							<th>비밀번호</th>
							<th>직책</th>
							<th>휴대폰번호</th>
							<th>고용일</th>
							<th>연차일수</th>
							<th>근속기간</th>
							<th>주민번호</th>
							<th>부서명</th>
							<!-- 
							<th>관리자번호</th>
							<th>권한번호</th>
							<th>부서번호</th>
							 -->
						</tr>
					</thead>
					<c:forEach items="${list}" var="emp">
						<tr>
							<td><input type="checkbox" class="empCheckbox"
								value="<c:out value='${emp.empNum}' />"></td>
							<td><c:out value="${emp.empNum}" /></td>
							<td><c:out value="${emp.empName}" /></td>
							<td><c:out value="${emp.pw}" /></td>
							<td><c:out value="${emp.job}" /></td>
							<td><c:out value="${emp.phoneNum}" /></td>
							<td><fmt:formatDate value="${emp.hireDate}"
									pattern="yyyy-MM-dd" /></td>
							<td><c:out value="${emp.annualLeaveNum}" /></td>
							<td><c:out value="${emp.workDate}" /></td>
							<td><c:out value="${emp.birthDate}" /></td>
						
							
							
						</tr>
					</c:forEach>

				</table>

				<div class='row'>
					<div class="col-lg-12">

						<form id='searchForm' action="/emp/list" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${emppageMaker.cri.type == null?'selected':''}"/>>--</option>
								<option value="T"
									<c:out value="${emppageMaker.cri.type eq 'T'?'selected':''}"/>>사원번호</option>
								<option value="C"
									<c:out value="${emppageMaker.cri.type eq 'C'?'selected':''}"/>>사원명</option>
								<option value="W"
									<c:out value="${emppageMaker.cri.type eq 'W'?'selected':''}"/>>부서명</option>
								<option value="TC"
									<c:out value="${emppageMaker.cri.type eq 'TC'?'selected':''}"/>>사원번호
									or 사원명</option>
								<option value="TW"
									<c:out value="${emppageMaker.cri.type eq 'TW'?'selected':''}"/>>사원번호
									or 부서명</option>
								<option value="TWC"
									<c:out value="${emppageMaker.cri.type eq 'TWC'?'selected':''}"/>>사원번호
									or 사원명 or 부서명</option>
							</select> <input type='text' name='keyword'
								value='<c:out value="${emppageMaker.cri.keyword}"/>' /> <input
								type='hidden' name='emppageNum'
								value='<c:out value="${emppageMaker.cri.emppageNum}"/>' /> <input
								type='hidden' name='empamount'
								value='<c:out value="${emppageMaker.cri.empamount}"/>' />
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
				</div>
				<div class='pull-right'>
					<ul class="pagination">
						<c:if test="${emppageMaker.prev}">
							<li class="paginate_button previous"><a
								href="?emppageNum=${emppageMaker.startPage - 1}">Previous</a></li>
						</c:if>
						<c:forEach var="num" begin="${emppageMaker.startPage}"
							end="${emppageMaker.endPage}">
							<li
								class="paginate_button ${emppageMaker.cri.emppageNum == num ? 'active' : ''}">
								<a href="?emppageNum=${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${emppageMaker.next}">
							<li class="paginate_button next"><a
								href="?emppageNum=${emppageMaker.endPage + 1}">Next</a></li>
						</c:if>
					</ul>

				</div>




			</div>

			<form id='actionForm' action="/emp/list" method='get'>
				<input type='hidden' name='emppageNum'
					value='${emppageMaker.cri.emppageNum}'> <input
					type='hidden' name='empamount'
					value='${emppageMaker.cri.empamount}'> <input type='hidden'
					name='type' value='<c:out value="${ emppageMaker.cri.type }"/>'>
				<input type='hidden' name='keyword'
					value='<c:out value="${ emppageMaker.cri.keyword }"/>'>
			</form>

			<!--Modal  추가-->

			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">처리가 완료되었습니다.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!--  end panel-body -->
	</div>
	<!-- end panel -->
</div>
</div>
<!-- /.row -->






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

							$("#myModal").modal("show");
						}

						$("#regBtn").on("click", function() {

							self.location = "/emp/register";

						});
						$("#modiBtn").on(
								"click",
								function() {

									var selectedEmpNums = [];
									$(".empCheckbox:checked").each(function() {
										selectedEmpNums.push($(this).val());
									});
									if (selectedEmpNums.length == 0) {
										console.log("수정할 직원을 선택해주세요.");
										return;
									}
									if (selectedEmpNums.length > 1) {
										console.log("다중 선택은 지원되지 않습니다.");
										return;
									}

									var selectedEmpNum = selectedEmpNums[0];

									self.location = "/emp/modify?empNum="
											+ selectedEmpNum;

								});

						var actionForm = $("#actionForm");

						$(".paginate_button a").on(
								"click",
								function(e) {

									e.preventDefault();

									console.log('click');

									actionForm.find("input[name='emppageNum']")
											.val($(this).attr("href"));
									actionForm.submit();
								});

						$(".move")
								.on(
										"click",
										function(e) {

											e.preventDefault();
											actionForm
													.append("<input type='hidden' name='empNum' value='"
															+ $(this).attr(
																	"href")
															+ "'>");
											actionForm.attr("action",
													"/emp/get");
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

									searchForm.find("input[name='emppageNum']")
											.val("1");
									e.preventDefault();

									searchForm.submit();

								});

					});
</script>
