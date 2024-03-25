<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
				<button id='regBtn' type="button" class="btn btn-xs pull-left">
				Register New department</button>
				<button id='modiBtn' type="button" class="btn btn-xs pull-right">
					Update department</button>
			</div>

			<!-- /.panel-heading -->
			<div class="panel-body">
				<table class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th>체크박스</th>
							<th>번호</th>
							<th>부서명</th>

						</tr>
					</thead>

					<c:forEach items="${list}" var="dept">
						<tr>
							<td><input type="checkbox" class="deptCheckbox"
								value="<c:out value='${dept.deptNum}' />"></td>
							<td>
							<c:out value="${dept.deptNum}" />
							</td>
							<td>
							<c:out value="${dept.deptName}" />
							</td>


						</tr>
					</c:forEach>
				</table>

				<div class='row'>
					<div class="col-lg-12">

						<form id='searchForm' action="/dept/list" method='get'>
							<select name='type'>
								<option value=""
									<c:out value="${pageMaker.cri.type == null?'selected':''}"/>>--</option>
								<option value="C"
									<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>부서명</option>

							</select>
							 <input type='text' name='keyword'
								value='<c:out value="${pageMaker.cri.keyword}"/>' /> 
							<input type='hidden' name='deptpageNum'
								value='<c:out value="${pageMaker.cri.deptpageNum}"/>' /> 
							<input type='hidden' name='deptamount'
								value='<c:out value="${pageMaker.cri.deptamount}"/>' />
								
							<button class='btn btn-default'>Search</button>
						</form>
					</div>
				</div>


				<div class='pull-right'>
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous"><a
								href="${pageMaker.startPage -1}">Previous</a></li>
						</c:if>

						<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button  ${pageMaker.cri.deptpageNum == num ? "active":""} ">
								<!--active를 사용해서 찐하게 보이도록 함  --> <a href="${num}">${num}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next}">
							<li class="paginate_button next"><a
								href="${pageMaker.endPage +1 }">Next</a></li>
						</c:if>


					</ul>
				</div>
				<!--  end Pagination -->
			</div>

			<form id='actionForm' action="/dept/list" method='get'>
				<input type='hidden' name='deptpageNum' value='${pageMaker.cri.deptpageNum}'>
				<input type='hidden' name='deptamount' value='${pageMaker.cri.deptamount}'>

				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.cri.type }"/>'> <input
					type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.cri.keyword }"/>'>
			</form>
			
			<!-- Modal  추가 -->
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
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->

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

							self.location = "/dept/register";

						});
						$("#modiBtn").on(
								"click",
								function() {

									var selectedDeptNums = [];
									$(".deptCheckbox:checked").each(function() {
										selectedDeptNums.push($(this).val());
									});
									if (selectedDeptNums.length == 0) {
										console.log("수정할 부서를 선택해주세요.");
										return;
									}
									if (selectedDeptNums.length > 1) {
										console.log("다중 선택은 지원되지 않습니다.");
										return;
									}

									var selectedDeptNum = selectedDeptNums[0];

									self.location = "/dept/modify?deptNum="
											+ selectedDeptNum;

								});

						var actionForm = $("#actionForm");

						$(".paginate_button a").on(
								"click",
								function(e) {

									e.preventDefault();

									console.log('click');

									actionForm.find("input[name='deptpageNum']")
											.val($(this).attr("href"));
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

									searchForm.find("input[name='deptpageNum']")
											.val("1");
									e.preventDefault();

									searchForm.submit();

								});

					});
</script>
