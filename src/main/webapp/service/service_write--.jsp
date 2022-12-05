<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>         
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <link rel="shortcut icon" href="../favicon/favicon.ico">
    <title>맞춤영양제 위드필</title>

    <!-- Bootstrap core CSS -->
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="../assets/css/fontawesome.css">
    <link rel="stylesheet" href="../assets/css/templatemo-woox-travel.css">
    <link rel="stylesheet" href="../assets/css/owl.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>
    <link rel="stylesheet" href="../assets/css/style.css"/>
    <link rel="stylesheet" href="../assets/css/service.css">
    <link rel="stylesheet" href="../assets/css/index.css">

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="https://kit.fontawesome.com/738318faf3.js" crossorigin="anonymous"></script>
    <script src="../assets/js/function.js"></script>
    <!--

    TemplateMo 580 Woox Travel

    https://templatemo.com/tm-580-woox-travel

    -->

  </head>

<body>

  <!-- ***** Header Area Start ***** -->
  <div class="header-wrap">
    <div class="header-cnt">
      <nav>
        <div class="logo">
          <a href="../index.html"><img src="../assets/images/withpill_blue.png" alt="위드필로고"></a>
        </div>
        <div class="m-menu-list">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M2.5 12a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5z"/>
          </svg>
        </div>
        <div class="pc-menu">
          <ul>
            <li><a href="../join/join.html">로그인</a></li>
            <li><a href="../survey/survey.html">설문조사</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/AdminList.wp">고객센터</a></li>
            <li><a href="../nutrient/nutrient_search.html">스토어</a></li>
          </ul>
        </div>

      </nav>
    </div>
  </div>

  <div class="m-menu"> 
    <div class="m-menu-bg"></div>
    <ul>
      <li><a href="../join/join.html">로그인</a></li>
      <li><a href="../survey/survey.html">설문조사</a></li>
      <li><a href="${pageContext.request.contextPath}/admin/AdminList.wp">고객센터</a></li>
      <li><a href="../nutrient/nutrient_search.html">스토어</a></li>
    </ul>          
  </div>
  <!-- ***** Header Area End ***** -->
  

  <div class="service-container clearfix">
    <!-- ***** 좌측 메뉴 Start ***** -->
    <div class="left-menu">
      <ul>
        <li>
          고객센터
        </li>
        <li class="on">
          <a href="${pageContext.request.contextPath}/admin/AdminList.wp">
            위드필 소식
            <p class="icon"><i class="fa-solid fa-chevron-right"></i></p>
          </a>
        </li>
        <li>
          <a href="/service/serviceS1.jsp">
            약관 및 방침
            <p class="icon"><i class="fa-solid fa-chevron-right"></i></p>
          </a>
        </li>
      </ul>
    </div>
    <!-- ***** 좌측 메뉴 End ***** -->

    <!-- ***** service Start ***** -->
    <div class="service-wrap">
      
        <h2 style="font-size: 30px;">새글 작성</h2>
        <!-- <h4>위드필이 드리는 소식을 전합니다.</h4> -->

        <div class="service-contents">
            <!-- 목록 추가 -->
            <div class="notice-list-btn">
                <button onclick="location.href='${pageContext.request.contextPath}/admin/AdminList.wp'">목록</button>
            </div>
            </div>
            
        	<form action="${pageContext.request.contextPath}/admin/AdminWriteOk.wp" method="post" name="adminBoard">
	            <table class="admin-write" >
			        <tbody>
			          <tr>
			            <th class="admin-write-section">분류</th>
			            <th>
			              <select name="category">
			                <option>----선택하기----</option>
			                <option>소식</option>
			                <option>카드뉴스</option>
			              </select>
			            </th>
			          </tr>
			          <tr>
			            <th class="admin-write-section">제목</th>
			            <td>
			              <input class="contents-title" name="title" size="50" maxlength="20" placeholder="제목을 입력하세요.">
			            </td>
			          </tr>
			          <tr>
			            <th class="admin-write-section">내용</th>
			            <td class="contents-area">
			              <textarea name="content" placeholder="내용을 입력하세요."></textarea>
			            </td>
			          </tr>
			        </tbody>
	       			
				</table>
                <table style="border: 0px;">
					<tr align="right" valign="middle">
						<!-- 관리자 게시글 등록 버튼 -->
		            	<div class="reg-btn btns">
		                	<button onclick="location.href='javascript:document.adminBoard.submit();'">등록하기</button>
		            	</div>
					</tr>
				</table>
		 	</form>	
    	</div>
    <!-- ***** service End ***** -->
    </div>
  </div>
    <footer>
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            <p>Copyright © 2036 <a href="#">WoOx Travel</a> Company. All rights reserved. 
            <br>Design: <a href="https://templatemo.com" target="_blank" title="free CSS templates">TemplateMo</a> Distribution: <a href="https://themewagon.com" target="_blank" >ThemeWagon</a></p>
          </div>
        </div>
      </div>
    </footer>

</div>
</body>
</html>