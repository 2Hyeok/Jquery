<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<h2> New Element </h2>
<form oninput="result.value=parseInt(num1.value)+parseInt(num2.value)"> <!-- 입력이 됬을때 넣어라 value가 0이 아니면 null 이라고 나옴 -->
	<input type="number" name="num1" value="0">
	+ <input type="number" name="num2" value="0">
	= <output name="result"></output> <!-- 값을 입력하면 실행이됨 -->
</form>
<br><br>
0 <progress max="10" value="8"></progress>10 <br> <!-- 진행상태, 표시만 해주는상태, 입력불가, 최대길이=10, 현재상태=8--> 
<br><br>

0 <meter min="0" max="10" low="2" high="7" value="8"></meter>10 <!-- 범위가 안쪽이면 녹색, 범위밖이면 노란색  지정범위는 2~7, 현재값은 8 이기에 범위밖-->


<div contenteditable="true"> <!-- true이면 편집가능 false면 불가능-->
	<div>편집가능</div>
	<div contenteditable="false">편집불가능</div>
</div>
<br><br>

당신이 검색한 단어는 <mark>학원</mark>입니다 <br> <!-- 검색할때 문자 강조하는 태그 -->

<h2> Strong Web Form </h2>

이름 : ${param.name}<br>
나이 : ${param.age}<br>
가입일자 : ${param.logtime}<br>
일자 : ${param.today}<br>
시간 : ${param.now}<br> <!--  request.getParameter 이기 때문에 짤라써야함  -->
월 : ${param.month}<br>
주 : ${param.week}<br>
이메일 : ${param.email}<br>
홈페이지 : ${param.url}<br>
색상 : ${param.color}<br>
검색 : ${param.keyword}<br>
전화번호 : ${param.tel}<br>
숫자 : ${param.number}<br>
범위 : ${param.range}<br>
파일 : ${param.file}<br> <!-- 파일 이름이 올라오기 때문에 업로드 처리해주어야함, 지금은 파일의 이름만 올라옴 -->

<br><br>
<body bgcolor="${param.color}">
<form method="post" action="#"> <!--  action = "#" -> 자기한테 넘어가라는 뜻 -->
	<table border="1">
		<tr>
			<th> 파일 </th>
			<td> <input type="file" name="file" accept="text/*"></td> <!-- 파일선택, accept  ex)text = 텍스트의 모든종류 -->
		</tr>
		<tr>
			<th> 범위 </th>
			<td> 
				1 <input type="range" min="1" max="10" step="2" name="range"> 10 <!-- 값이 표시안됨, 2씩증가,  최대값 최소값 설정 해주어야함 -->
			</td>
		</tr>
		<tr>
			<th> 숫자 </th>
			<td> <input type="number" name="number"></td> <!-- 숫자만 들어감 다른값X -->
		</tr>
		<tr>
			<th> 전화번호 </th>
			<td> <input type="tel" name="tel"></td> <!-- 택스트랑 다를게 없음, 핸드폰용 태그 -->
		</tr>
		<tr>
			<th> 검색 </th>
			<td> <input type="search" name="keyword"></td> <!-- 택스트랑 다를게 없음, 핸드폰용 태그 -->
		</tr>
		<tr>
			<th> 색상 </th> <!-- 기본 색상이 검정이기 때문에 색상 선택후 넘겨야함 -->
			<td> <input type="color" name="color" value="#FFFFFF"></td> <!-- 기본값을 흰색으로 바꿈, 전송눌러도 흰색이기 때문에 안바뀜 -->
		</tr>
		<tr>
			<th> 이름 </th>
			<td> <input type="text" name="name" autofocus></td>
		</tr>
		<tr>
			<th> 나이 </th>
			<td> <input type="text" name="age" placeholder="숫자만 입력하세요"></td> <!-- placeholder는 글자 입력시 글자가 사라짐 -->
		</tr>
		<tr>
			<th> 가입일자 </th>
			<td> <input type="datetime-local" name="logtime"></td>
		</tr>
		<tr>
			<th> 일자 </th>
			<td> <input type="date" name="today"></td>
		</tr>
		<tr>
			<th> 시간 </th>
			<td> <input type="time" name="now"></td>
		</tr>
		<tr>
			<th> 월 </th>
			<td> <input type="month" name="month"></td>
		</tr>
		<tr>
			<th> 주 </th>
			<td> <input type="week" name="week"></td> <!-- 몇번째 주인지 -->
		</tr>
		<tr>
			<th> 이메일 </th>
			<td> <input type="email" name="email"></td> <!-- 몇번째 주인지 -->
		</tr>
		<tr>
			<th> 홈페이지 </th>
			<td> <input type="url" name="url"></td> <!-- 몇번째 주인지 -->
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value="전송">
				<input type="reset" value="취소">
			</th>
		</tr>
	</table>
</form>
</body>