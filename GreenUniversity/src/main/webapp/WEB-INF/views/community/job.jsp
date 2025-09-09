<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- 
	날짜 :
	이름 : 장진원
	내용 : 취업정보
-->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/job.css">
<body>

	<header>
		<div>
			<div class="top">
				<p>
					<a href="#">HOME&nbsp&nbsp&nbsp|</a> <a href="#">&nbsp&nbsp&nbsp사이트맵&nbsp&nbsp
						&nbsp|</a> <a href="#">&nbsp&nbsp&nbsp로그인&nbsp&nbsp&nbsp|</a> <a
						href="#">&nbsp&nbsp&nbsp학생지원</a>
				</p>
			</div>
		</div>
		<!-- 로고 + 네비게이션 -->
		<div>
			<div class="nav-container">
				<a href="#"><img src="./images/header_logo.png" alt="학교 로고">
					<nav>
						<ul>
							<li>대학소개
								<ul class="submenu">
									<li><a href="#">총장 인사말</a></li>
									<li><a href="#">교육이념</a></li>
									<li><a href="#">연혁</a></li>
									<li><a href="#">조직도</a></li>
									<li><a href="#">오시는길</a></li>
								</ul>
							</li>
							<li>입학안내
								<ul class="submenu">
									<li><a href="#">공지사항</a></li>
									<li><a href="#">수시모집</a></li>
									<li><a href="#">정시모집</a></li>
									<li><a href="#">편입학</a></li>
									<li><a href="#">입학상담</a></li>
								</ul>
							</li>
							<li>대학·대학원
								<ul class="submenu">
									<li><a href="#">인문사회대학</a></li>
									<li><a href="#">자연과학대학</a></li>
									<li><a href="#">공과대학</a></li>
									<li><a href="#">사범대학</a></li>
									<li><a href="#">대학원</a></li>
								</ul>
							</li>
							<li>학사안내
								<ul class="submenu">
									<li><a href="#">공지사항</a></li>
									<li><a href="#">학사일정</a></li>
									<li><a href="#">수강신청</a></li>
									<li><a href="#">성적</a></li>
									<li><a href="#">수료 및 졸업</a></li>
									<li><a href="#">자주묻는질문</a></li>
								</ul>
							</li>
							<li>대학생활
								<ul class="submenu">
									<li><a href="#">학생회소개</a></li>
									<li><a href="#">동아리/스터디</a></li>
									<li><a href="#">식단안내</a></li>
									<li><a href="#">갤러리</a></li>
								</ul>
							</li>
							<li>커뮤니티
								<ul class="submenu">
									<li><a href="#">공지사항</a></li>
									<li><a href="#">뉴스 및 일정</a></li>
									<li><a href="#">취업정보</a></li>
									<li><a href="#">자유게시판</a></li>
								</ul>
							</li>
						</ul>
					</nav>
			</div>
		</div>
	</header>
	<main>
		<div>
			<div class="info">
				<span id="test"> <img src="./images/ico-home.png" alt="홈 버튼">
					> 대학소개 > 총장 인사말
				</span>
			</div>
		</div>
		<div>
			<div class="content-wrapper">
				<div class="sidebar">
					<div class="top">
						<h1>커뮤니티</h1>
					</div>
					<div class="bottom">
						<ul>
							<li><a href="#">공지사항</a></li>
							<li><a href="#">뉴스 및 칼럼</a></li>
							<li class="active"><a href="#">취업정보</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">질문과 답변</a></li>
							<li><a href="#">자료실</a></li>
						</ul>
					</div>
				</div>
				<div class="main-content">
					<div class="top">
						<h2>취업정보</h2>
					</div>
					<div class="bottom">
						<p>
						<div class="search-box">
							<select name="search-filter" id="search-filter">
								<option value="all">전체</option>
								<option value="title">제목</option>
								<option value="writer">작성자</option>
							</select> <input type="text" placeholder="검색어를 입력해 주세요">
							<button>검색</button>
						</div>
						<div class="bottom">

							<table class="notice-table">

								<thead>
									<tr>
										<th>번호</th>
										<th>상태</th>
										<th>업체</th>
										<th>채용정보</th>
										<th>작성일</th>
										<th>조회</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>3</td>
										<td><span class="category1">모집중</span></td>
										<td>정석수학학원</td>
										<td>고등 1학년 수학 (공동수학)만 지도 가능한...</td>
										<td>24.04.09.12:00</td>
										<td>160</td>
									</tr>
									<tr>
										<td>3</td>
										<td><span class="category1">모집중</span></td>
										<td>(주)삼성전자</td>
										<td>2025 상반기 (주)삼성전자 대학원(석사) 신...</td>
										<td>24.04.09.12:00</td>
										<td>160</td>
									</tr>
									<tr>
										<td>3</td>
										<td><span class="category2">마감</span></td>
										<td>(주)삼성전자</td>
										<td>2025 상반기 (주)삼성전자 대학원(석사) 신...</td>
										<td>24.04.09.12:00</td>
										<td>160</td>
									</tr>

								</tbody>
							</table>

							<div class="pagination">
								<a href="#">&lt;</a> <a href="#">1</a> <a href="#">2</a> <a
									href="#">3</a> <a href="#">&gt;</a>
							</div>
						</div>
						</p>

					</div>
				</div>
			</div>
		</div>

	</main>

	<footer>
		<!-- 상단 메뉴 -->
		<div class="terms-wrap">
			<div class="inner">
				<ul>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">통합정보시스템</a></li>
					<li><a href="#">학사일정</a></li>
					<li><a href="#">주요민원 연락처</a></li>
					<li><a href="#">교내공지사항</a></li>
				</ul>
			</div>
		</div>

		<!-- 학교 정보 + 주요사이트 -->
		<div class="info-wrap">
			<div class="inner">
				<div class="info-left">
					<img src="./images/footer_logo.png" alt="그린대학교 로고">
					<div class="text">
						그린대학교<br> [12345] 부산광역시 부산진구 부전대로 123 그린대학교<br> 대표전화 :
						051-123-1000 | 입학안내 : 051-123-1302 | 팩스 : 051-123-3333<br> <span>copyright
							©Green University All rights reserved.</span>
					</div>
				</div>
				<div class="site">
					<select>
						<option>주요사이트 선택</option>
						<option>도서관</option>
						<option>학생포털</option>
						<option>취업정보센터</option>
						<option>국제교류센터</option>
					</select>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>