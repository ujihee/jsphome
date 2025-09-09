<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>user4::list</title>
	</head>
	<body>
		<h3>user4 수정</h3>
		<a href="/ch09">처음으로</a>
		<a href="/ch09/user4/list.do">목록이동</a>
		
		<form action="/ch09/user4/modify.do" method="post">
		<table border="1">
		<tr>
		<td>이름</td>
		<td><input type="text" name="name" readonly value="${user4DTO.name}" placeholder="이름 입력"/></td>
		</tr>
		<tr>
		<td>성별</td>
		<td>
		<label><input type="radio" name="gender" value="M" ${user4DTO.gender == 'M' ? 'checked' : ''}/>남자</label>
		<label><input type="radio" name="gender" value="F" ${user4DTO.gender == 'F' ? 'checked' : ''}/>여자</label>
		</td>
		<tr>
		<td>나이</td>
		<td><input type="number" name="age" value="${user4DTO.age }" placeholder="나이 입력"/></td>
		</tr>
		<tr>
		<td>주소</td>
		<td><input type="text" name="addr" value="${user4DTO.addr}" placeholder="주소 입력"/></td>
		</tr>
		<tr>
			<td colspan="2" align="right">
			<input type="submit" value="등록하기">
			</td>
		</tr>
		</table>
		</form>
	</body>
</html>