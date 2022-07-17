<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>메인입니다</h1>
	<form action="display.jsp" method="POST">
		<button type="button" onclick="dptPop()">기관 선택</button>
		<div id="dptNm">기관명:</div>
		<button type="button">담당자 선택</button>
		<div>담당자명: </div>
		  <input type="submit"/>
	</form>
</body>
</html>


<script>

function dptPop(){

var url ="tree.do";
var name ="popup"

window.open(url , name , "width=500, height=500, toolbar= no, status=no, location=no, scrollbars = yes, menubar=no,resizable=yes, left=50, right=50");

}

function test(id, name){
	$("#dptNm").empty();
	$("#dptNm").append(name);
}




</script>