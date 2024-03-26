<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">Department Register</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-default">

      <div class="panel-heading">Department Modify</div>
      <!-- /.panel-heading -->
      <div class="panel-body">
	
	      <form role="form" action="/dept/modify" method="post">
	       
	        <input type='hidden' name='deptpageNum' value='<c:out value="${cri.deptpageNum }"/>'>
	        <input type='hidden' name='deptamount' value='<c:out value="${cri.deptamount }"/>'>
		    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
			<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
	       
		 
				<div class="form-group">	
				  <label>deptNum</label> 
				  <input class="form-control" name='deptNum' 
				     value='<c:out value="${dept.deptNum }"/>' readonly="readonly">
				</div>
				
				<div class="form-group">
				  <label>DeptName</label> 
				  <input class="form-control" name='deptName' 
				    value='<c:out value="${dept.deptName }"/>' >
				</div>
			
				
				  <button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
				  <button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
				  <button type="submit" data-oper='list' class="btn btn-info">List</button>
		 		  
			</form>


      </div>
      <!--  end panel-body -->

    </div>
    <!--  end panel panel-default -->
  </div>
  <!-- end col-lg-12 -->
</div>
<!-- /.row -->

<script type="text/javascript">
$(document).ready(function() {


	  var formObj = $("form");

	  $('button').on("click", function(e){
	    
	    e.preventDefault(); 
	    
	    var operation = $(this).data("oper");
	    
	    console.log(operation);
	     
	    if(operation === 'remove'){
	      formObj.attr("action", "/dept/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	     self.location="/dept/list";
	      return;
	      
	    }
	     
	    formObj.submit();
	  });

});
</script>
  




