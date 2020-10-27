<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>MyPage-Profile</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		
		<link rel="stylesheet" href="../assets/css/MyPage.css" />
	</head>
	<body class="no-sidebar is-preload" style="overflow-x:hidden">
		<div id="page-wrapper">

			<!-- Header -->
            <section id="header">
               <div class="container">

                  <!-- Logo -->
                     <h1 id="logo"><a href="/index.jsp">MY HOB!</a></h1>

                  <!-- Nav -->
                     <nav id="nav">
                        <ul>
                           <li><a href="/index.jsp"><span>About Us</span></a></li>
                           <li>
                              <a href="/HobbyTest/mbti.jsp"><span>Hobby</span></a>
                              <ul>
                                 <li><a href="/HobbyTest/mbti.jsp">취미 검사</a></li>
                                 <li><a href="/HobbyTest/mbti.jsp">MBTI 검사</a></li>
                              </ul>
                           </li>
                           <li><a href="/MyPage/MyClass.jsp">
                           <span>MY Page</span></a>
                              <ul>
                                 <li><a href="/MyPage/MyClass.jsp">My Class</a></li>
                                 <li><a href="/MyPage/HobbyLog.jsp">활동로그</a></li>
                                 <li><a href="/MyPage/Profile.jsp">내 프로필</a></li>
                                 <li><a href="/MyPage/EditProfile.jsp">프로필수정</a></li>
                              </ul>
                           <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">
                           <span>Service Center</span></a>
                              <ul>
                                 <li><a href="/ServiceCenter/Noticeboard/notice.jsp">공지사항</a></li>
                                 <li><a href="/ServiceCenter/FAQboard/FAQ.jsp">FAQ</a></li>
                                 <li><a href="/ServiceCenter/Q&Aboard/Q&A.jsp">Q&A</a></li>
                              </ul>
                           </li>
                           <li><a href="/community/infoboard/info_board.jsp">
                              <span>community</span></a>
                              <ul>
                                 <li><a href="/community/freeboard/free_board.jsp">자유게시판</a></li>
                                 <li><a href="/community/infoboard/info_board.jsp">정보게시판</a></li>
                              </ul>
                           
                           </li>
                        </ul>
                        <ul class="navtop">   
                                
                                    <li><a href="/Join/LoginForm.jsp">Login</a></li>
				                    <li><a href="/Join/insertForm.jsp">Join</a></li>
                                  <!-- <li><a class="fas fa-key" href="/MyPage/Profile.jsp"></a>-->
                                    <li><a href="/MyPage/Profile.jsp"><img src="../images/gear.png"></a></li>
                                                                            
                        </ul>
                     </nav>

               </div>
            </section>
	
			<!-- 사이드 바 -->
			<div id="my-Sidebar">
        		<h2>마이페이지</h2>
        		<ul>
         		  	<li><a href="../MyPage/Profile.jsp" title="프로필">프로필</a></li>
        		  	<li><a href="../MyPage/MyClass.jsp" title="내 클래스">내 클래스</a></li>
         	  	 	<li><a href="../MyPage/HobbyLog.jsp" title="취미 로그">취미 로그</a></li>
         	  	 	<li><a href="../MyPage/EditProfile.jsp" title="회원 정보 관리">회원 정보 관리</a></li>
        		</ul>
      		</div>
	<!-- Main -->
		<section id="main">
					<div class="container">
						<div id="content">
						
							<!-- Profile -->
							 <div class="profile">
							         <div class="left">
									<form action="../MyPage/fileupload.jsp" method="post" enctype="Multipart/form-data">
										<input type="hidden" name="ID" />
										<img src="../images/profile_img.jpg" alt="" width=100px ><br>										
							         	<h4>김은비</h4>
							         	<p>beawha@naver.com</p><br><br>
										
									</form>							         	
							         </div>
							         
							         <div class="right">
							         		<h3>프로필 카드</h3>
								         	<div class="data">
								         		<h4>가입일</h4>
								         		<p>2020/09/13</p>
								         	</div>
								         	<div class="data">
								         		<h4>내클래스</h4>
								         		<p>꽃꽃이 클래스,바리스타 클래스, 쿠킹 클래스</p>
								         	</div>
								         	<div class="data">
								         		<h4>닉네임</h4>
								         		<p>배화짱</p>
								         	</div>
								         	<div class="data">
								         		<h4>내용4</h4>
								         		<p>내용</p>
								         	</div>
								         	<div class="data">
								         		<h4>내용5</h4>
								         		<p>내용</p>
								         	</div>
			            			</div>
			           	 </div>
			         </div>
			       </div>
			</section>
			

		</div>

		<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.dropotron.min.js"></script>
			<script src="../assets/js/browser.min.js"></script>
			<script src="../assets/js/breakpoints.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<script src="../assets/js/main.js"></script>
	</body>

</body>
</html>