<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<button onclick="searchMovie()">查询影片</button>
<button onclick="addMovie()">添加影片</button>
<button onclick="deleteMovie()">删除影片</button>
<body>
<table border="1" cellspacing="0">
	<tr>
		<th><input type="checkbox" onclick="qx()"></th>
		<th>影片名</th>
		<th>导演</th>
		<th>票价</th>
		<th>上映时间</th>
		<th>时长</th>
		<th>类型</th>
		<th>年代</th>
		<th>区域</th>
		<th>状态</th>
		<th>操作</th>
	</tr>
	<c:forEach items="${info.list }" var="list">
	<tr>
		<td><input type="checkbox" class="c1" value="${list.id }"></td>
		<td>${list.name }</td>
		<td>${list.actor }</td>
		<td>${list.price }</td>
		<td>${list.uptime }</td>
		<td>${list.longtime }</td>
		<td>${list.type }</td>
		<td>${list.years }</td>
		<td>${list.area}</td>
		<td>${list.status}</td>
		<td>
			<a href="">详情</a>
			<a href="">编辑</a>
			<a href="">下架</a>
		</td>
	</tr>
	
	</c:forEach>
	<tr>
		<td colspan="11" align="center"><jsp:include page="/WEB-INF/view/pages.jsp"></jsp:include></td>
	</tr>
	
</table>
<script type="text/javascript">
	function goPage(pageNum){
		location.href="/list?pageNum="+pageNum
	}
	function qx(){
		
	}
	function searchMovie(){
		location.href="/searchMovie"
	}
</script>

</body>
</html>