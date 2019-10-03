<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%
	String ctx = request.getContextPath();
	pageContext.setAttribute("ctx", ctx);
%>
<%@include file="includes/header.jsp"%>
<script src="/webjars/jquery/3.4.1/jquery.min.js"></script>
		<!-- 부트스트랩 자바스크립트 추가하기 -->
		<script src="/webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="/resources/css/reserve.css">

<title>병원 예약</title>

<h1 style="text-align:center;font-weight: bold;">${hos.name} 예약하기</h1>

<br>
<br>

<div class="container">
      <div class="row"> 
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6"> 
<div id="my-calendar"></div>
 </div>  <!-- col-6 -->
 <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">  

<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col" colspan="4" style="text-align:center">예약시간</th>
    </tr>
  </thead>
  <tbody id="tt">  <!-- 테이블작성 -->
    <tr>
      
    </tr>
   
  </tbody>
</table>
</div>
  </div><!--(./row)-->
  
<br>


 <!-- 타임테이블 -->
<form  action ='/reserve'onsubmit="return check()" method="POST">
<br>
<input type="hidden" id='d' name='reservedate' value=''>   
<input type="hidden" id='t' name='reservetime' value=''>
<input type="hidden" id='animal' name='animalId' value=''>  
<input type="hidden" id='hospital' name='hospitalId' value='${hos.hospitalId}'>  
<input type="hidden" id='userEmail' name='userEmail' value=<sec:authentication property="principal.username"/>>
<input type="hidden" id='animalId' name='animalId' value=''>

<div id='reservedate'><h4>예약날짜</h4></div> 
<div id='reservetime'><h4>예약시간</h4></div>
<br>
<h3 style="font-weight:bold">동물선택</h3>
<ul class="animallist">
  
<c:forEach items="${animal}" var="animallist">

	<li id="${animallist.animalId}" data-id="${animallist.animalId}">${animallist.aname}</li>

</c:forEach>

</ul>
<button class="btn btn-primary" type ="submit"" style='float: right'>예약하기</button>
</form>
</div><!--(./COntainer")-->

<script type="text/javascript">
	window.start = '${hos.treatStart}';
	window.end = '${hos.treatEnd}';
</script>

<script>

$(".animallist").on("click", "li", function(e) {
	
	var a = $(this).data("id");
	
	console.log(a);
	
});

</script>



  

   

<script type="text/javascript" src="/resources/js/reserve.js"></script>
<%@include file="includes/footer.jsp"%>
