const btn1 = document.getElementById('btn1');

btn1.addEventListener('click', (e) => {
	// window.open(url, taget) : 새 창을 여는 자바스크립트 함수
	open('./popup.jsp', '_blank', 'width=400,height=400,top=100, right=100'); // _blank : 새 창
});