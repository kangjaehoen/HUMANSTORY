<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form role="form" action="register" method="post">
		임시 부서번호 :<input type="text" name="docNum" value=""> <br>
		임시 사원번호 :<input type="text" name="empNum" value=""> <br>
		제목 : <input type="text" name="title" value=""> <br> 
		내용 : <input type="text" name="detail" value=""> <br> 
	
		<input type='hidden' name='${_csrf.parameterName}' value='${_csrf.token}' />
		<input type="submit" value="등록">
	</form>
	
<!-- 	 <form action="/uploadFormAction" method="post" enctype="multipart/form-data">
    파일첨부: <input type="file" name="uploadFile" multiple>
    <input type="submit" value="저장확인">
</form>	
 -->
<div>
	<div>
		파일 첨부 : <input type="file" name='uploadFile' multiple><br> 
	</div>
	<div class='uploadResult'>
		<ul>

		</ul>
	</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript">
	$(function() {

		var formObj = $("form[role='form']");

		$("button[type='submit']").on(
				"click",
				function(e) {
					e.preventDefault();
					console.log("submit clicked");
					var str = "";

					$(".uploadResult ul li").each(
							function(i, obj) {

								var jobj = $(obj);

								console.dir(jobj);
								console.log("-------------------------");
								console.log(jobj.data("filename"));

								str += "<input type='hidden' name='attachList["
										+ i + "].fileName' value='"
										+ jobj.data("filename") + "'>";
								str += "<input type='hidden' name='attachList["
										+ i + "].uuid' value='"
										+ jobj.data("uuid") + "'>";
								str += "<input type='hidden' name='attachList["
										+ i + "].uploadPath' value='"
										+ jobj.data("path") + "'>";
								str += "<input type='hidden' name='attachList["
										+ i + "].fileType' value='"
										+ jobj.data("type") + "'>";
							});

					console.log(str);

					formObj.append(str).submit();
				});

		var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
		var maxSize = 5242880; //5MB

		function checkExtension(fileName, fileSize) {

			if (fileSize >= maxSize) {
				alert("파일 사이즈 초과");
				return false;
			}

			if (regex.test(fileName)) {
				alert("해당 종류의 파일은 업로드할 수 없습니다.");
				return false;
			}
			return true;
		}

		$("input[type='file']").change(function(e) {
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;

			for (var i = 0; i < files.length; i++) {
				if (!checkExtension(files[i].name, files[i].size)) {
					return false;
				}
				formData.append("uploadFile", files[i]);
			}

			$.ajax({
				url : '/uploadAjaxAction',
				processData : false,
				contentType : false,
				data : formData,
				type : 'post',
				dataType : 'json',
				success : function(result) {
					console.log(result);
					showUploadResult(result); //업로드 결과 처리 함수 

				}
			}); //$.ajax		    
		});//end change   

		function showUploadResult(uploadResultArr) {

			if (!uploadResultArr || uploadResultArr.length == 0) {
				return;
			}

			var uploadUL = $(".uploadResult ul");

			var str = "";

			$(uploadResultArr)
					.each(
							function(i, obj) {

								if (obj.image) {
									var fileCallPath = encodeURIComponent(obj.uploadPath
											+ "/s_"
											+ obj.uuid
											+ "_"
											+ obj.fileName);
									str += "<li data-path='"+obj.uploadPath+"'";
					str +=" data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"'"
					str +" ><div>";
									str += "<span> " + obj.fileName + "</span>";
									str += "<button type='button' data-file=\'"+fileCallPath+"\' "
					str += "data-type='image' class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
									str += "<img src='/display?fileName="
											+ fileCallPath + "'>";
									str += "</div>";
									str + "</li>";
								} else {
									var fileCallPath = encodeURIComponent(obj.uploadPath
											+ "/"
											+ obj.uuid
											+ "_"
											+ obj.fileName);
									var fileLink = fileCallPath.replace(
											new RegExp(/\\/g), "/");

									str += "<li "
					str += "data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"' data-filename='"+obj.fileName+"' data-type='"+obj.image+"' ><div>";
									str += "<span> " + obj.fileName + "</span>";
									str += "<button type='button' data-file=\'"+fileCallPath+"\' data-type='file' " 
					str += "class='btn btn-warning btn-circle'><i class='fa fa-times'></i></button><br>";
									str += "<img src='/resources/img/attach.png'></a>";
									str += "</div>";
									str + "</li>";
								}

							});

			uploadUL.append(str);
		}

	})
</script>
</body>
</html>