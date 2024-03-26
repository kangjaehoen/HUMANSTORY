<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- /.row -->
<nav
	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<form class="form-inline">
		<button id="sidebarToggleTop"
			class="btn btn-link d-md-none rounded-circle mr-3">
			<i class="fa fa-bars"></i>
		</button>
	</form>

	<!-- Topbar Search -->


	<!-- Topbar Navbar -->
	<ul class="navbar-nav ml-auto">



		<!-- Nav Item - Alerts -->
		<li class="nav-item dropdown no-arrow mx-1"><a
			class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
				<span class="badge badge-danger badge-counter">3+</span>
		</a> <!-- Dropdown - Alerts -->
			<div
				class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="alertsDropdown">
				<h6 class="dropdown-header">Alerts Center</h6>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-primary">
							<i class="fas fa-file-alt text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">December 12, 2019</div>
						<span class="font-weight-bold">A new monthly report is
							ready to download!</span>
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-success">
							<i class="fas fa-donate text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">December 7, 2019</div>
						$290.29 has been deposited into your account!
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="mr-3">
						<div class="icon-circle bg-warning">
							<i class="fas fa-exclamation-triangle text-white"></i>
						</div>
					</div>
					<div>
						<div class="small text-gray-500">December 2, 2019</div>
						Spending Alert: We've noticed unusually high spending for your
						account.
					</div>
				</a> <a class="dropdown-item text-center small text-gray-500" href="#">Show
					All Alerts</a>
			</div></li>

		<!-- Nav Item - Messages -->
		<li class="nav-item dropdown no-arrow mx-1"><a
			class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i> <!-- Counter - Messages -->
				<span class="badge badge-danger badge-counter">7</span>
		</a> <!-- Dropdown - Messages -->
			<div
				class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="messagesDropdown">
				<h6 class="dropdown-header">Message Center</h6>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="img/undraw_profile_1.svg"
							alt="...">
						<div class="status-indicator bg-success"></div>
					</div>
					<div class="font-weight-bold">
						<div class="text-truncate">Hi there! I am wondering if you
							can help me with a problem I've been having.</div>
						<div class="small text-gray-500">Emily Fowler · 58m</div>
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="img/undraw_profile_2.svg"
							alt="...">
						<div class="status-indicator"></div>
					</div>
					<div>
						<div class="text-truncate">I have the photos that you
							ordered last month, how would you like them sent to you?</div>
						<div class="small text-gray-500">Jae Chun · 1d</div>
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="img/undraw_profile_3.svg"
							alt="...">
						<div class="status-indicator bg-warning"></div>
					</div>
					<div>
						<div class="text-truncate">Last month's report looks great,
							I am very happy with the progress so far, keep up the good work!</div>
						<div class="small text-gray-500">Morgan Alvarez · 2d</div>
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle"
							src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
						<div class="status-indicator bg-success"></div>
					</div>
					<div>
						<div class="text-truncate">Am I a good boy? The reason I ask
							is because someone told me that people say this to all dogs, even
							if they aren't good...</div>
						<div class="small text-gray-500">Chicken the Dog · 2w</div>
					</div>
				</a> <a class="dropdown-item text-center small text-gray-500" href="#">Read
					More Messages</a>
			</div></li>

		<div class="topbar-divider d-none d-sm-block"></div>

		<!-- Nav Item - User Information -->
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <span
				class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas
					McGee</span> <img class="img-profile rounded-circle"
				src="img/undraw_profile.svg">
		</a> <!-- Dropdown - User Information -->
			<div
				class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#"> <i
					class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
				</a> <a class="dropdown-item" href="#"> <i
					class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
				</a> <a class="dropdown-item" href="#"> <i
					class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
					Log
				</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#" data-toggle="modal"
					data-target="#logoutModal"> <i
					class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					Logout
				</a>
			</div></li>

	</ul>

</nav>
<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header text-center">사원 관리</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">


				<button id='regBtn' type="button"
					class="btn btn-xs btn-secondary float-right mr-2">Register
					New employee</button>
				<button id='modiBtn' type="button"
					class="btn btn-xs btn-secondary float-right mr-2"
					>Update employee</button>
			</div>
			<div class='row'>
				<div class="col-sm-12 col-md-5">

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
						<button class='btn btn-xs btn-secondary mr-2'>Search</button>
					</form>
				</div>
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
							<th>email</th>
							<th>연차일수</th>
							<th>주소</th>
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
							<td><c:out value="${emp.email}" /></td>
							<td><c:out value="${emp.annualLeaveNum}" /></td>
							<td><c:out value="${emp.address}" /></td>
							<td><c:out value="${emp.workDate}" /></td>
							<td><c:out value="${emp.birthDate}" /></td>
							<td><c:out value="${emp.department.deptName}" /></td>



						</tr>
					</c:forEach>

				</table>


				<div class="row">
					<div class="col-sm-12 col-md-5"></div>
					<div class="col-sm-12 col-md-7">
						<div class='dataTables_paginate paging_simple_numbers '
							id="dataTable_paginate">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<c:if test="${emppageMaker.prev}">
										<li class="paginate_button previous"><a
											aria-label="Previous" href="${emppageMaker.startPage - 1}">Previous
										</a></li>
									</c:if>
									<c:forEach var="num" begin="${emppageMaker.startPage}"
										end="${emppageMaker.endPage}">
										<li
											class="paginate_button ${emppageMaker.cri.emppageNum == num ? 'active' : ''}">
											<a class="page-link" href="${num}">${num}</a>
										</li>
									</c:forEach>

									<c:if test="${emppageMaker.next}">
										<li class="paginate_button next"><a aria-label="Next"
											href="${emppageMaker.endPage + 1}">Next</a></li>
									</c:if>
								</ul>
							</nav>
						</div>
					</div>
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
								data-dismiss="modal">확인</button>

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
						$("#myModal").modal("hide");
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
