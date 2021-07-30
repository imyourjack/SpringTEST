<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Spring Test</title>
<script type="text/javascript">
function btn() {
	$.ajax({
		url : "${cpath}/bookListAjax.do",
		type : "get",
		datatype : "json",
		success : ajaxHtml,
		error : function () {alert("error");}	
	});
}
function ajaxHtml(data) {
  		var html="<table class='table' border='1'>";
  		html+="<tr>";
  		html+="<td>번호</td>";
  		html+="<td>제목</td>";
  		html+="<td>작가</td>";
  		html+="<td>출판사</td>";
  		html+="<td>ISBN</td>";
  		html+="<td>보유도서수</td>";
  		html+="</tr>";
  		
  		$.each(data, (index, obj)=> {
  			html+="<tr>";
  			html+="<td>"+obj.num+"</td>";
  			html+="<td>"+obj.title+"</td>";
  			html+="<td>"+obj.author+"</td>";
  			html+="<td>"+obj.company+"</td>";
  			html+="<td>"+obj.isbn+"</td>";
  			html+="<td>"+obj.count+"</td>";
  			html+="</tr>";
		});
  		
  		html+="</table>";
  		$("#list").html(html);
}
</script>
</head>
<body>
<div>
  <table class="table" border='1'>
   <tr>
       <td>번호</td>
       <td>제목</td>
       <td>작가</td>
       <td>출판사</td>
       <td>ISBN</td>
       <td>보유도서수</td>
   </tr>
   <c:forEach var="vo" items="${list}">
   	<tr>
       <td>${vo.num}</td>
       <td>${vo.title}</td>
       <td>${vo.author}</td>
       <td>${vo.company}</td>
       <td>${vo.isbn}</td>
       <td>${vo.count}</td>
	 </tr>
    </c:forEach>
  </table>
</div>
<button onclick="btn()">도서목록 가져오기</button>
<div id="list">여기에 도서목록이 출력됩니다</div>
</body>
</html>