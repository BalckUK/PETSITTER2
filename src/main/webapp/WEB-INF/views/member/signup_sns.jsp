<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
.wrap {
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
	margin-top: 30px width: 700px;
}

* {
	box-sizing: border-box;
}

.menu {
	text-align: left;
}

.ans {
	text-align: left;
}

input[type=text], input[type=password] {
	width: 70%;
}

i {
	color: #81DAD6;
}

.btns {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 6px 10px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 10px;
}

.btns1 {
	background-color: #4CAF50; /* Green */
	border: none;
	color: white;
	padding: 13px 25px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	margin: 4px 2px;
	-webkit-transition-duration: 0.4s; /* Safari */
	transition-duration: 0.4s;
	cursor: pointer;
	border-radius: 10px;
}

.btn1 {
	background-color: #81DAD6;
	color: white;
	border-radius: 10px;
}

.btn1:hover {
	background-color: turquoise;
	color: white;
}

@font-face {
	font-family: 'IBMPlexSansKR-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

.title, .menu, .menu1 {
	font-family: 'IBMPlexSansKR-Regular';
}
</style>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<!--CDN 링크 -->

</head>

<body>

	<jsp:include page="/WEB-INF/views/member/signup_head.jsp" />
	<div class="container">
		<div class="wrap col-8" style="margin-top: 80px;">
			<div class="row header">
				<div class="col-12 title">
					<h2>
						<i class="fas fa-user"></i> 회원가입
					</h2>
				</div>
			</div>
			<form action="/member/signupProc" name=signup method="post">
				<div class="row">
					<input type="hidden" name="mem_join_type" value="${join_type}">
					<div class="col-12 menu">ID</div>
					<div class="col-12 ans">
						<input type="text" id="id" name="mem_id" value="${joinInfo.id}"
							readonly>
					</div>
				</div>

				<div class="row">
					<div class="col-12 menu">이름</div>
					<div class="col-12 ans">
						<input type="text" id="name" name="mem_name">
					</div>
				</div>
				<div class="row">
					<div class="col-12 menu">Email</div>
					<div class="col-12 ans">
						<input type="text" id="email" name="mem_email"
							value="${joinInfo.email}" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-12 menu">연락처</div>
					<div class="col-12 ans">
						<input type="text" id="phone" name="mem_phone"
							placeholder="-를 제외한 숫자 입력">
					</div>
				</div>
				<div class="row">
					<div class="col-12 menu">우편번호</div>
					<div class="col-12 ans">
						<input type="text" id="zipcode" name="mem_zipcode" readonly>
						<button type="button" class="btns btn1"
							onclick="sample4_execDaumPostcode()">우편번호 찾기</button>
					</div>
				</div>
				<div class="row">
					<div class="col-12 menu">주소</div>
					<div class="col-12 ans">
						<input type="text" id="add1" name="mem_address1" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col-12 menu">상세주소</div>
					<div class="col-12 ans">
						<input type="text" id="add2" name="mem_address2">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-12 menu1">
						<button type="button" id="signup" class="btns1 btn1">회원가입</button>
						<button type="button" id="back" class="btns1 btn1">취소</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/member/footer.jsp" />
	<script>
		function sample4_execDaumPostcode() {
			new daum.Postcode({
				oncomplete : function(data) {
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					document.getElementById('zipcode').value = data.zonecode;
					document.getElementById("add1").value = roadAddr;
				}
			}).open();
		}
	</script>
	<script>
		$(function() {

			$("#name").on("focusout", function() {
				var name = $("#name").val();
				var nameCheck = RegExp(/^[가-힣]{2,6}$/);

				if (name != null && name != "") {
					if (!nameCheck.test(name)) {
						alert("이름은 한글 2-6자로만 입력 가능합니다.");
						$("#name").val("");
					}
				}
			})

			$("#phone").on("focusout", function() {
				var phonNumberCheck = RegExp(/^01[0179][0-9]{7,8}$/);
				var phone = $("#phone").val();

				if (phone != null && phone != "") {
					if (!phonNumberCheck.test(phone)) {
						alert("연락처는 01로 시작하여 -없이 숫자만 입력하세요.")
					}
				}
			})

		}) //function 끝
	</script>
	<script>
		$('input[type="text"]').keydown(function() {
			if (event.keyCode === 13) {
				event.preventDefault();
			}
		});
	</script>
	<script>
		document.getElementById("signup").onclick = function() {

			if ($("#name").val() == "") {
				alert("이름이 없습니다.");
				$("#name").focus();

			} else if ($("#phone").val() == "") {
				alert("연락처가 없습니다.");
				$("#phone").focus();

			} else if ($("#zipcode").val() == "" || $("#add1").val() == "") {
				alert("주소가 없습니다.");
				$("#zipcode").focus();
			} else {

				var queryString = $("form[name=signup]").serialize();

				$.ajax({
					type : "POST",
					url : "/member/sns_signupProc",
					cache : false,
					data : queryString,
					dataType : "json",
					success : function(data) {
						var check = data.result;
						console.log(check);
						if (check == 0) {
							alert('입력 정보를 확인하세요.');
						} else
							(check == 1)
						{
							alert('회원가입이 완료되었습니다. 다시 한 번 로그인 후 이용 부탁드립니다.');
							location.href = "/";
						}
					}
				});

			}

		}
	</script>




</body>
</html>