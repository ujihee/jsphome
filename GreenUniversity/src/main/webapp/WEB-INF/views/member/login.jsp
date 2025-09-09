<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--
	날짜 : -
    이름 : 정순권
    내용 : -
-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member/login.css">
</head>
<body>
	<jsp:include page="../header.jsp" />
    <main>
    	<div>
			<div class="info">
				<span id="test">
					<img src="<%=request.getContextPath()%>/resources/images/ico-home.png" alt="홈 버튼">
					 > 회원 > 로그인 
				</span>
			</div>
		</div>
        <div>
            <div class="content-wrapper">
                <div class="sidebar"></div>
                <div class="login">
                    <div class="loginTop">
                        <span><b>LOGIN</b></span>
                        <p>
                            로그인을 하시면 더 다양한 서비스를 받으실 수 있습니다.
                        </p>
                    </div>
                    <div class="loginMid">
                        <form class="loginBox" action="#">
                            <ul class="type">
                                <li><input type="radio" id="typeStd" name="userType" class="checkbox" required><label for="typeStd">학부생</label></li>
                                <li><input type="radio" id="typeProf" name="userType" class="checkbox" required><label for="typeProf">교직원</label></li>
                                <li><input type="radio" id="typeNull" name="userType" class="checkbox" required><label for="typeNull">일반인</label></li>
                            </ul>
                            <a href="#" class="findIdPass">아이디/비밀번호 찾기</a><br>
                            <table>
                                <tr>
                                    <td><input type="text" name="user_id" required placeholder="아이디" class="idBox"></td>
                                </tr>
                                <tr>
                                    <td><input type="password" name="user_pass" required placeholder="비밀번호" class="passBox"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" value="로그인" class="loginButton">
                                    </td>
                                </tr>
                            </table>
                            <a href="./terms.html">회원가입</a>
                        </form>
                    </div>
                    <div>
                        <div class="loginInfo">
                            <h4><img src="<%=request.getContextPath()%>/resources/images/bullet-h4.png">&nbsp&nbsp아이디, 비밀번호 안내</h4>
                            <p>- 대학 구성원(학원, 교직원)은 회원가입없이 교번, 학번을 사용하여 로그인이 가능합니다.</p>
                            <p>- 비밀번호 분실시 학생지원팀에 방문하셔서 초기화하실 수 있습니다.</p>
                            <p>- 재학, 휴학, 졸업 유예인 경우 사용하실 수 있으며, 매년 학적변동이 일어날 때 상태가 변경됩니다.</p>
                            <p>- 문의사항이 있으시다면 담당자(055-123-4567)에게 전화주세요</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
	<jsp:include page="../footer.jsp" />
</body>
</html>