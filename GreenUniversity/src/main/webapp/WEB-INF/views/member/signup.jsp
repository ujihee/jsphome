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
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/member/signup.css">
</head>
<body>
	<main>
		<div>
			<div class="info">
				<span id="test"> <img src="<%=request.getContextPath()%>/resources/ico-home.png" alt="홈 버튼">
					> 회원 > 회원가입
				</span>
			</div>
		</div>
		<div>
			<div class="content-wrapper">
				<div class="register">
					<div class="topInfo">
						<span>
							<h4>회원가입</h4>
							<p>반갑습니다 그린대학교 입니다. 회원가입 후 더 많은 정보를 이용하세요.</p>
							<p>대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다.</p>
						</span>
					</div>
					<div class="registerForm">
						<form action="" id="registerForm">
							<table class="registerTable">
								<tr>
									<th>아이디<i>*</i></th>
									<td><input type="text" name="user_id" required
										placeholder="아이디 입력"><span>영문·숫자 조합 4~10자 이내</span></td>
								</tr>
								<tr>
									<th>비밀번호<i>*</i></th>
									<td><input type="password" name="user_pass1" required
										placeholder="비밀번호 입력"><span>비밀번호는 8-16자리 이내, 영문
											· 숫자 · 특수문자 조합</span></td>
								</tr>
								<tr>
									<th>비밀번호 확인<i>*</i></th>
									<td><input type="password" name="user_pass2" required
										placeholder="비밀번호 확인 입력"></td>
								</tr>
								<tr>
									<th>이름<i>*</i></th>
									<td><input type="text" name="user_name" required
										placeholder="이름 입력"></td>
								</tr>
								<tr>
									<th>휴대폰<i>*</i></th>
									<td><input type="tel" name="user_hp" required
										placeholder="휴대폰 입력"></td>
								</tr>
								<tr>
									<th>이메일<i>*</i></th>
									<td><input type="text" name="user_email" required
										placeholder="이메일 입력"></td>
								</tr>
								<tr>
									<th>주소</th>
									<td><input type="text" id="postal_code" placeholder="우편번호"
										readonly> <br> <input type="text" id="basic_addr"
										placeholder="기본주소" readonly> <br> <input
										type="text" id="detail_addr" placeholder="상세주소"></td>
								</tr>
							</table>
							<span class="notice"> <i>*</i>&nbsp&nbsp필수입력
							</span>
							<div class="selectBox">
								<button id="cancel">취소</button>
								<button id="signUp">회원가입</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</main>
	
	<script>
	document
			.addEventListener(
					'DOMContentLoaded',
					function(e) {
						const signUpBtn = document.getElementById('signUp');
						const cancelBtn = document.getElementById('cancel');

						const userId = document.getElementsByName('user_id')[0];
						const userPass1 = document
								.getElementsByName('user_pass1')[0];
						const userPass2 = document
								.getElementsByName('user_pass2')[0];
						const userName = document
								.getElementsByName('user_name')[0];
						const userHp = document.getElementsByName('user_hp')[0];
						const userEmail = document
								.getElementsByName('user_email')[0];

						signUpBtn
								.addEventListener(
										'click',
										function(e) {
											e.preventDefault();

											// 아이디 유효성 검사 (영문, 숫자 조합, 1~10자)
											const idRegex = /^[a-zA-Z0-9]{1,10}$/;
											if (userId.value.trim() === '') {
												alert('아이디를 입력해 주세요.');
												userId.focus();
												return;
											} else if (!idRegex
													.test(userId.value)) {
												alert('아이디는 영문, 숫자 조합 4~10자 이내로 입력해 주세요.');
												userId.focus();
												return;
											}

											// 비밀번호 유효성 검사 (8~16자, 영문, 숫자, 특수문자 조합)
											const passRegex = /^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{8,16}$/;
											if (userPass1.value.trim() === '') {
												alert('비밀번호를 입력해 주세요.');
												userPass1.focus();
												return;
											} else if (!passRegex
													.test(userPass1.value)) {
												alert('비밀번호는 8~16자, 영문, 숫자, 특수문자 조합으로 입력해 주세요.');
												userPass1.focus();
												return;
											}

											// 비밀번호 확인 유효성 검사
											if (userPass2.value.trim() === '') {
												alert('비밀번호 확인을 입력해 주세요.');
												userPass2.focus();
												return;
											}
											if (userPass1.value !== userPass2.value) {
												alert('비밀번호가 일치하지 않습니다.');
												userPass2.focus(); // 보통 두 번째 비밀번호 입력란에 커서를 줍니다.
												return;
											}

											// 이름 유효성 검사
											if (userName.value.trim() === '') {
												alert('이름을 입력해 주세요.');
												userName.focus();
												return;
											}

											// 휴대폰 번호 유효성 검사
											if (userHp.value.trim() === '') {
												alert('휴대폰 번호를 입력해 주세요.');
												userHp.focus();
												return;
											}

											// 이메일 유효성 검사
											if (userEmail.value.trim() === '') {
												alert('이메일 주소를 입력해 주세요.');
												userEmail.focus();
												return;
											}

											// 모든 검증이 통과하면 다음 페이지로 이동
											alert('회원가입이 완료되었습니다!');
											window.location.href = './login.html';
										});

						cancelBtn.addEventListener('click', function(e) {
							e.preventDefault();

							window.location.href = './login.html';
						});
					});
</script>
</body>
</html>