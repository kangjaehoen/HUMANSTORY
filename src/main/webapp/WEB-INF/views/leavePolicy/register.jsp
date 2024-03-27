<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<style type="text/css">
.container {
	max-width: 600px;
	margin: 50px auto;
	padding-left: 70px;
	padding-right: 70px;
	padding-top: 20px;
	padding-bottom: 30px;
	border: 1px solid #ddd;
	border-radius: 5px;
	background-color: #fff;
}

label{
	font-size: 20px;
}

#title{
	width: 100%;
    padding: 10px;
    font-size: 16px;
    border-bottom: 3px solid #ddd;
    border-left:none;
    border-right:none;
    border-top:none;
    box-sizing: border-box;
    margin-bottom: 30px;
    height: 80px;
    font-size:24px;
    padding-bottom: 0px;
    margin-top: 15px;
}

#title:focus {
    outline: none;
}

#detail{
	width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-sizing: border-box;
    height: 300px;
    
}


/* 입력 필드와 라벨 스타일 */
.input-group {
	margin-bottom: 20px;
}

.input-group label {
	display: block;
	margin-bottom: 5px;
}

.input-group input[type="text"], .input-group textarea {
	width: 100%;
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ddd;
	border-radius: 5px;
	box-sizing: border-box;
}

.input-group textarea {
	height: 150px;
}
.panel-body {
    padding: 20px;
}

.uploadDiv label {
    display: inline-block;
    padding: 10px 15px;
    font-size: 16px;
    background-color: #b5b7e5;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.uploadDiv label:hover {
    background-color: #5c5e91;
}

.uploadResult ul {
    list-style: none;
    padding: 0;
}

.uploadResult li {
    margin-bottom: 10px;
    overflow: hidden;
}

.uploadResult li span {
    display: block;
    margin-bottom: 5px;
    font-size: 16px;
}

.uploadResult li img {
    max-width: 100px;
    height: auto;
    margin-top: 5px;
    display: block;
}

.uploadResult li button {
    display: inline-block;
    margin-left: 10px;
    padding: 5px;
    font-size: 14px;
    background-color: #f44336;
    color: #fff;
    border: none;
    border-radius: 50%;
    cursor: pointer;
    transition: background-color 0.3s;
}
.upload-box {
  border: 2px dashed #aaa;
  border-radius: 5px;
  padding: 20px;
  text-align: center;
  cursor: pointer;
}

.uploadResult li button:hover {
    background-color: #d32f2f;
}

/* 등록 버튼 스타일 */
#submitBtn {
	display: block;
	width: 100%;
	padding: 13px;
	font-size: 18px;
	background-color: #b5b7e5;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s;
	margin-top: 30px;
}

#submitBtn:hover {
	background-color: #5c5e91;
}
</style>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>	
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/lang/summernote-ko-KR.js"></script>

	<div class="container">
		<form role="form" action="register" method="post"
			enctype="multipart/form-data">
			<!-- 게시물 정보 입력 부분 -->
		<!-- 	<div>
				<label for="empNum">임시 사원번호:</label> <input type="text" id="empNum"
					name="empNum" >
			</div> -->
			<div>
				<input type="text" id="title"
					name="title" placeholder="제목을 입력해주세요.">
			</div>
				
			<div id="detailDiv">
				<input type="text" id="summernote" name="detail" placeholder="내용을 입력해주세요."/>
			</div>

			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
				
			 <input id="submitBtn" type="submit" value="등록">
		</form>
		
		
	
		
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">

				<div class="panel-heading"></div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="form-group uploadDiv">
						<div class="upload-box" id="dropArea">
  							<div>클릭하여 파일을 선택하세요.</div>
							<input type="file" name='uploadFile' multiple>
							
								<div class='uploadResult'>
									<ul>

									</ul>
								</div>
							
						</div>
					</div>
					

				


				</div>
				<!--  end panel-body -->
			</div>
			<!--  end panel-body -->
		</div>
		<!-- end panel -->
	</div>
	<!-- /.row -->
		
</div>

	<script type="text/javascript">
		$(function() {

			var formObj = $("form[role='form']");

			$("#submitBtn")
					.on(
							"click",
							function(e) {
								e.preventDefault();
								console.log("submit clicked");
								var str = "";

								$(".uploadResult ul li")
										.each(
												function(i, obj) {

													var jobj = $(obj);

													console.dir(jobj);
													console
															.log("-------------------------");
													console.log(jobj
															.data("filename"));

													str += "<input type='hidden' name='attachList["
															+ i
															+ "].fileName' value='"
															+ jobj
																	.data("filename")
															+ "'>";
													str += "<input type='hidden' name='attachList["
															+ i
															+ "].uuid' value='"
															+ jobj.data("uuid")
															+ "'>";
													str += "<input type='hidden' name='attachList["
															+ i
															+ "].uploadPath' value='"
															+ jobj.data("path")
															+ "'>";
													str += "<input type='hidden' name='attachList["
															+ i
															+ "].fileType' value='"
															+ jobj.data("type")
															+ "'>";
												});

								console.log(str);

								formObj.append(str).submit();
							});
			$(".uploadResult").on("click", "button", function(e){

					var click =$(this).closest("li");
					click.remove();
					
			})

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
					type : 'POST',
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
										str += "<span> " + obj.fileName
												+ "</span>";
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
										str += "<span> " + obj.fileName
												+ "</span>";
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
	<script type="text/javascript">
	$(document).ready(function() {
		//여기 아래 부분a
		$('#summernote').summernote({
			  height: 300,                 // 에디터 높이
			  minHeight: null,             // 최소 높이
			  maxHeight: null,             // 최대 높이
			  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
			  lang: "ko-KR",					// 한글 설정
			  placeholder: '내용을 입력해주세요.'	//placeholder 설정
	          
		});
	    $('#summernote').on('summernote.change', function() {
            $('#detail').val($('#summernote').summernote('code'));
        });

        
        $("#submitBtn").on("click", function(e) {
            e.preventDefault();
         
            $("form[role='form']").submit();
        });
	
	});
	
	</script>
</body>
</html>