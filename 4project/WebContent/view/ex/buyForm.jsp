<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>CUWET HOME</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/main2.css">
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/notosanskr.css);
* {font-family: 'Noto Sans KR', sans-serif; }
table {	width : 100%;	border-collapse: collapse;  }
th,td {
	border : 2px solid #bcbcbc;
	text-align: center;  	padding : 8px;
}
th {    background-color: white; 	color : white;   }
td {	background-color: white;}
caption {
	color : #111111; 	font-size: 20px;
	background-color: #FFFFFF;
}
input[type=text],input[type=password],textarea {
	width : 100%;
}
</style>

</head>

<script>
// Accordion 
function myAccFunc() {
  var x = document.getElementById("demoAcc");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else {
    x.className = x.className.replace(" w3-show", "");
  }
}

function myAccFunc2() {
	  var x = document.getElementById("demoAcc2");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

function myAccFunc3() {
	  var x = document.getElementById("demoAcc3");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

function myAccFunc4() {
	  var x = document.getElementById("demoAcc4");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}

function myAccFunc5() {
	  var x = document.getElementById("demoAcc5");
	  if (x.className.indexOf("w3-show") == -1) {
	    x.className += " w3-show";
	  } else {
	    x.className = x.className.replace(" w3-show", "");
	  }
	}
// Click on the "Jeans" link on page load to open the accordion for demo purposes
document.getElementById("myBtn").click();
document.getElementById("myBtn2").click();
document.getElementById("myBtn3").click();
document.getElementById("myBtn4").click();
document.getElementById("myBtn5").click();
// Open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}
</script>
<body class="w3-content" style="max-width:1200px">
 
<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
	
  <div class="w3-container w3-display-container w3-padding-16">
    <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
    <h3 class="w3-wide"><a href="main"><img src="<%=request.getContextPath()%>/view/ex/img/logo.jpg" alt="Jeans" style="width:100%"></a></h3>
  </div>
  
  
  <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
 
  	<a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      의류 <i class="fa fa-caret-down"></i>
    </a>
      <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      
      <a href="list?subpcode=${plist[0] }" class="w3-bar-item w3-button">남자 상의</a>
      <a href="list?subpcode=${plist[1] }" class="w3-bar-item w3-button">남자 하의</a>
      <a href="list?subpcode=${plist[2] }" class="w3-bar-item w3-button">여자 상의</a>
      <a href="list?subpcode=${plist[3] }" class="w3-bar-item w3-button">여자 하의</a>
    </div>
    
    <a onclick="myAccFunc2()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      도서 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc2" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      
      <a href="list?subpcode=${plist[4] }" class="w3-bar-item w3-button">소설</a>
      <a href="list?subpcode=${plist[5] }" class="w3-bar-item w3-button">만화책</a>
      <a href="list?subpcode=${plist[6] }" class="w3-bar-item w3-button">유아</a>
      <a href="list?subpcode=${plist[7] }" class="w3-bar-item w3-button">자기계발</a>
      <a href="list?subpcode=${plist[8] }" class="w3-bar-item w3-button">참고서</a>
    </div>
    
    <a onclick="myAccFunc3()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      뷰티 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc3" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      
      <a href="list?subpcode=${plist[9] }" class="w3-bar-item w3-button">스킨케어</a>
      <a href="list?subpcode=${plist[10] }" class="w3-bar-item w3-button">메이크업</a>
      <a href="list?subpcode=${plist[11] }" class="w3-bar-item w3-button">남자화장품</a>
      <a href="list?subpcode=${plist[12] }" class="w3-bar-item w3-button">향수</a>
    </div>
    
    <a onclick="myAccFunc4()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      식품 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc4" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      
      <a href="list?subpcode=${plist[13] }" class="w3-bar-item w3-button">과일/채소</a>
      <a href="list?subpcode=${plist[14] }" class="w3-bar-item w3-button">정육/수산</a>
      <a href="list?subpcode=${plist[15] }" class="w3-bar-item w3-button">면류/즉석식품/통조림</a>
      <a href="list?subpcode=${plist[16] }" class="w3-bar-item w3-button">음료/유제품</a>

    </div>
    
    <a onclick="myAccFunc5()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
      디지털/가전 <i class="fa fa-caret-down"></i>
    </a>
    <div id="demoAcc5" class="w3-bar-block w3-hide w3-padding-large w3-medium">
      
      <a href="list?subpcode=${plist[17] }" class="w3-bar-item w3-button">TV</a>
      <a href="list?subpcode=${plist[18] }" class="w3-bar-item w3-button">냉장고</a>
      <a href="list?subpcode=${plist[19] }" class="w3-bar-item w3-button">데스크탑</a>
      <a href="list?subpcode=${plist[20] }" class="w3-bar-item w3-button">세탁기</a>
      <a href="list?subpcode=${plist[21] }" class="w3-bar-item w3-button">휴대폰</a>
    </div>
  </div>
</nav>

<!-- Top menu on small screens -->
<header class="w3-bar w3-top w3-hide-large w3-xlarge">
  
  <a href="javascript:void(0)" class="w3-bar-item w3-button w3-padding-24 w3-right" onclick="w3_open()"><i class="fa fa-bars"></i></a>
</header>

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

  <!-- Push down content on small screens -->
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Top header -->
  

  
<p align="right">
<font size="2px">
<c:if test="${empty session}"><a href="loginForm">로그인/회원가입&nbsp;</a></c:if>
<c:if test="${not empty session}"><a href="logout">로그아웃&nbsp;</a></c:if>
<c:if test="${empty session}"><a href="loginForm" onclick="alert('로그인 후 이용해주세요');">마이페이지&nbsp;</a></c:if>
<c:if test="${not empty session}"><a href="mypageForm">마이페이지&nbsp;</a></c:if>
<c:if test="${empty session}"><a href="loginForm" onclick="alert('로그인 후 이용해주세요');">장바구니&nbsp;</a></c:if>
<c:if test="${not empty session}"><a href="basketForm">장바구니&nbsp;</a></c:if>
<c:if test="${empty session}"><a href="loginForm" onclick="alert('로그인 후 이용해주세요');">고객센터&nbsp;</a></c:if>
<c:if test="${not empty session}"><a href="SBoardForm">고객센터&nbsp;</a></c:if>
</font>
</p>


<h4 align="center"><b>주문내역</b></h4>
<form action="#" method="post">

<table >

<c:forEach var="b" items="${list }">
<tr><td  class="date" colspan="2">${b.getPdate() } </td>
<td class="orderDelete" style="color: blue;"><a href="buydelete?pnum=${b.getPnum()}&id=${b.getId()}"><b>주문내역 삭제</b></a></td></tr>
<tr><td rowspan="3"class="orderborder" width="150px" height="150px"><a href="productinfo?pcode=${b.getPcode()}&id=${b.getId()}">
<img src="<%=request.getContextPath()%>/view/ex/img/${b.getPimg() }" width="150px" height="150px"></a></td>

<td class="orderborder" colspan="2">
<a href="productinfo?pcode=${b.getPcode()}&id=${b.getId()}"><b>상품명 :</b> ${b.getPname() }</a></td>
</tr>


<tr><td class="orderborder"><b>구매번호 :</b> ${b.getPnum() }</td><td class="orderborder"><b>상품가격 :</b> ${b.getPrice() }원</td></tr>
<tr><td class="orderborder" colspan="2"><b>상품소개 :</b> ${b.getPcontent() }</td></tr>

</c:forEach>
</table>
</form>
	
	

  <!-- Footer -->
 <font size="2px">
    <div class="w3-row-padding" >
      <div class="w3-row s4" align="left">
        <h4>(주)CUWET</h4>
        <p><a href="#">주소 : 서울특별시 강남구 역삼동 819-10 세경빌딩 3층</a></p>
        <p><a href="#">고객센터 : 02-111-1111</a></p>
        <p><a href="#">사업자 등록번호 : 02-111-1111</a></p>
        <p><a href="#">통신판매업신호 : 02-111-1111</a></p>
      </div>
    </div>
   </font>

  <div class="w3-button w3-black w3-margin-bottom" style="width:100% "><a href="https://open.kakao.com/o/gjCa2mWc">카카오톡 문의</a></div>
  <!-- End page content -->
</div>

<!-- Newsletter Modal -->
<div id="newsletter" class="w3-modal">
  <div class="w3-modal-content w3-animate-zoom" style="padding:32px">
    <div class="w3-container w3-white w3-center">
      <i onclick="document.getElementById('newsletter').style.display='none'" class="fa fa-remove w3-right w3-button w3-transparent w3-xxlarge"></i>
      <h2 class="w3-wide">NEWSLETTER</h2>
      <p>Join our mailing list to receive updates on new arrivals and special offers.</p>
      <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail"></p>
      <button type="button" class="w3-button w3-padding-large w3-red w3-margin-bottom" onclick="document.getElementById('newsletter').style.display='none'">Subscribe</button>
    </div>
  </div>
</div>
</body>
</html>
