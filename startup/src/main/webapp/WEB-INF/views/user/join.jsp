<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="/resources/css/main.css" />
<style>
.phone-btn {
	border-color: rgb(221, 221, 221);
	color: rgb(221, 221, 221);
}

.change-cir {
	min-width: 24px;
	min-height: 24px;
	display: inline-block;
	position: relative;
	border-radius: 50%;
	background-color: rgb(95, 0, 128);
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="join-main">
		<div class="join-top">회원가입</div>
		<div class="impo-join">
			<div class="join-bar">
				<span class="join-star">*</span>필수입력사항
			</div>
			<form class="joinForm" name="joinForm" id="joinForm"
				action="/user/join" method="post">
				<div class="joinview-main">
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">아이디<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div style="padding-bottom: 0px; box-sizing: border-box;">
								<div
									style="position: relative; height: 48px; box-sizing: border-box;">
									<input type="text" placeholder="아이디를 입력해주세요" class="join-inp"
										name="userid">
								</div>
							</div>
						</div>
						<div class="ri-btn">
							<button type="button" class="ajax-btn ajax-btn-id">
								<span>중복확인</span>
							</button>
						</div>
					</div>
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">비밀번호<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div style="padding-bottom: 0px; box-sizing: border-box;">
								<div
									style="position: relative; height: 48px; box-sizing: border-box;">
									<input type="password" placeholder="비밀번호를 입력해주세요"
										class="join-inp" name="userpw">
								</div>
							</div>
						</div>
						<div class="no-show-join"></div>
					</div>
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">비밀번호확인<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div style="padding-bottom: 0px; box-sizing: border-box;">
								<div
									style="position: relative; height: 48px; box-sizing: border-box;">
									<input type="password" placeholder="비밀번호를 한번더 입력해주세요"
										class="join-inp" disabled>
								</div>
							</div>
						</div>
						<div class="no-show-join"></div>
					</div>
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">이름<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div style="padding-bottom: 0px; box-sizing: border-box;">
								<div
									style="position: relative; height: 48px; box-sizing: border-box;">
									<input type="text" placeholder="이름을 입력해주세요" class="join-inp"
										name="username">
								</div>
							</div>
						</div>
						<div class="no-show-join"></div>
					</div>
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">이메일<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div style="padding-bottom: 0px; box-sizing: border-box;">
								<div
									style="position: relative; height: 48px; box-sizing: border-box;">
									<input type="text" placeholder="예:mungdori@naver.com"
										class="join-inp" name="useremail">
								</div>
							</div>
						</div>
						<div class="ri-btn">
							<button type="button" class="ajax-btn ajax-btn-email">
								<span>중복확인</span>
							</button>
						</div>
					</div>
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">휴대폰<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div style="padding-bottom: 0px; box-sizing: border-box;">
								<div
									style="position: relative; height: 48px; box-sizing: border-box;">
									<input type="text" placeholder="숫자만 입력해주세요" class="join-inp"
										name="userphone">
								</div>
							</div>
						</div>
						<div class="ri-btn">
							<button type="button" class="ajax-btn phone-btn" disabled>
								<span>인증번호받기</span>
							</button>
						</div>
					</div>
					<!--input api 다시해야한다. -->
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">주소<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<button type="button" class="dli-btn-join"
								onclick="sample4_execDaumPostcode()" value="우편번호 찾기">
								<span style="font-size: 14px; font-weight: 500;"><img
									src="https://res.kurly.com/pc/service/cart/2007/ico_search.svg"
									alt="" class="addr-join">주소 검색</span>
							</button>
							<span class="dli-info-join">배송지에 따라 상품 정보가 달라질 수 있습니다.</span>
						</div>
						<div class="no-show-join"></div>
					</div>
					<!--자바스크립트 해줘야한다.  -->
					<div class="join-info">
						<div class="left-join-info">
							<label class="join-lab">성별</label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div class="join-gender">
								<label class="lab-gender gender-one" for="gender-man"> <input
									type="radio" id="gender-man" name="gender" value="male"
									disabled class="gender-join-rd"><span class="cir-join"
									id="cir-men"><div class="in-cir"></div></span><span
									aria-labelledby="gender-man" class="han-gender">남자</span></label> <label
									class="lab-gender gender-two" for="gender-woman"> <input
									type="radio" disabled id="gender-woman" name="gender"
									value="woman" class="gender-join-rd"><span
									class="cir-join" id="cir-woman"><div class="in-cir"></div></span><span
									aria-labelledby="gender-woman" class="han-gender">여자</span></label>
							</div>
						</div>
						<div class="no-show-join"></div>
					</div>


				</div>
				<div class="bottom-join-bar"></div>
				<div class="bottom-check">
					<div class="join-check">
						<div class="left-check">
							<label class="check-alarm">이용약관동의<span class="join-star">*</span></label>
						</div>
						<div style="flex: 1 1 0%; box-sizing: border-box;">
							<div class="check-all-join join-all">
								<label class="check-lab1" for="agreeAll"><input
									id="agreeAll" type="checkbox" class="inp-check1"><img
									alt=""
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
									class="check-img1">전체 동의합니다.</label>
								<p class="wkxnfl">선택항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수
									있습니다.</p>
							</div>
							<div class="check-all-join">
								<div class="rotorl1">
									<label for="condiagree" class="condiagree"><input
										type="checkbox" id="condiagree" class="rotorl2"><img
										alt=""
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
										class="check-img1">이용약관 동의</label> <span class="rotorl3">(필수)</span>
								</div>
								<a class="modal-join1">약관보기</a>
							</div>
							<div class="check-all-join">
								<div class="rotorl1">
									<label for="condiagree2" class="condiagree"><input
										type="checkbox" id="condiagree2" class="rotorl2"><img
										alt=""
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
										class="check-img1">개인정보 수집∙이용 동의</label> <span class="rotorl3">(필수)</span>
								</div>
								<a class="modal-join1">약관보기</a>
							</div>
							<div class="check-all-join">
								<div class="rotorl1">
									<label for="condiagree" class="condiagree"><input
										type="checkbox" id="condiagree" class="rotorl2"><img
										alt=""
										src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjREREIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNjY5LjAwMDAwMCwgLTEwOTAuMDAwMDAwKSB0cmFuc2xhdGUoMTAwLjAwMDAwMCwgOTM2LjAwMDAwMCkgdHJhbnNsYXRlKDU1My4wMDAwMDAsIDE0Mi4wMDAwMDApIHRyYW5zbGF0ZSgxNi4wMDAwMDAsIDEyLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8Y2lyY2xlIGN4PSIxMiIgY3k9IjEyIiByPSIxMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjUiIGQ9Ik03IDEyLjY2N0wxMC4zODUgMTYgMTggOC41Ii8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
										class="check-img1">본인은 만 14세 이상입니다.</label> <span
										class="rotorl3">(필수)</span>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="last-join-btn">
					<button type="submit" class="sub-join">
						<span style="font-size: 16px; font-weight: 500;"> 가입하기</span>
					</button>
				</div>
			</form>

		</div>
	</div>

	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-bs-toggle="modal"
		data-bs-target="#exampleModal" style="display: none;" id="my-btn">Launch
		demo modal</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">...</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">확인</button>

				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="/resources/js/find.js"></script>
</body>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var roadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 참고 항목 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('sample4_postcode').value = data.zonecode;
						document.getElementById("sample4_roadAddress").value = roadAddr;
						document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

						// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
						if (roadAddr !== '') {
							document.getElementById("sample4_extraAddress").value = extraRoadAddr;
						} else {
							document.getElementById("sample4_extraAddress").value = '';
						}

						var guideTextBox = document.getElementById("guide");
						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							guideTextBox.innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';
							guideTextBox.style.display = 'block';

						} else if (data.autoJibunAddress) {
							var expJibunAddr = data.autoJibunAddress;
							guideTextBox.innerHTML = '(예상 지번 주소 : '
									+ expJibunAddr + ')';
							guideTextBox.style.display = 'block';
						} else {
							guideTextBox.innerHTML = '';
							guideTextBox.style.display = 'none';
						}
					}
				}).open();
	}

	$(".ajax-btn-id").on("click", function(e) {
		e.preventDefault();
		let userid = $("[name='userid']").val();
		findService.checkid({
			userid : userid
		}, function(result) {
			if (result) {
				document.getElementById('my-btn').click();
			}
		})
	})
	$(".ajax-btn-email").on("click", function(e) {
		e.preventDefault();
		let useremail = $("[name='useremail']").val();
		findService.checkemail({
			useremail : useremail
		}, function(result) {
			if (result) {
				document.getElementById('my-btn').click();
			}
		})

	})

	$(".gender-one").on("click", function(event) {
		let gender_man = document.getElementById("cir-men");
		gender_man.classList.add('change-cir');
		gender_man.classList.remove('cir-join');
		let gender_woman = document.getElementById("cir-woman");
		if (gender_woman.classList.contains('cir-join')) {
			return

		} else {
			gender_woman.classList.remove('change-cir');
			gender_woman.classList.add('cir-join');

		}

	})
	$(".gender-two").on("click", function(event) {
		let gender_woman = document.getElementById("cir-woman");
		gender_woman.classList.add('change-cir');
		gender_woman.classList.remove('cir-join');

		let gender_man = document.getElementById("cir-men");

		if (gender_man.classList.contains('cir-join')) {
			return

		} else {
			gender_man.classList.remove('change-cir');
			gender_man.classList.add('cir-join');
		}
	})
</script>
</html>