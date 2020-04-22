<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="list">
	<table>
		<tr>
			<td>影片名称</td>
			<td><input type="text" name="name"></td>
			<td>上映时间</td>
			<td><input type="date" name="startTime">至
				<input type="date" name="endTime">
			</td>
		</tr>
		<tr>
			<td>导演</td>
			<td><input type="text" name="actor"></td>
			<td>价格</td>
			<td><input type="text" name="p1">-
				<input type="text" name="p2">
			</td>
		</tr>
		<tr>
			<td>电影年代</td>
			<td><input type="text" name="years"></td>
			<td>电影时长</td>
			<td><input type="text" name="l1">-
				<input type="text" name="l2">
			</td>
		</tr>
		<tr>
			<td><input type="submit" value="查询影片"></td>
			<td><input type="reset" name="查询重置"></td>
		</tr>
	</table>

</form>
</body>
</html>