<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Tab ��� ������</title>
	<style>
		.tabContent {
			border: solid 1px black;
			display: none;
		}
		
		.show {
			display: block;
		}
		
		#toppings {
			display: grid;
			grid-template-columns: 1fr 1fr 1fr 1fr;
		}
		#toppings > div {
			boder: 1px orange splid;
			height: 100px;
		}
		
		 #sauces{
         display: grid;
         grid-template-columns: 1fr 1fr 1fr 1fr;      
      }
      
      	#sauces > div{
         border : solid 1px tomato;
         height : 200px
      }
		
		
	</style>
</head>
<body>

	 <div>
	 	<button onclick="showTab class="tabBtb">����</button>
	 	<button onclick="showTab class="tabBtb">�ҽ�</button>
	 	<button onclick="showTab class="tabBtb">ġ��</button>

		<div id="topping" class="tabContent show"></div>
			<div id="toppings">
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
				<div>5</div>
				<div>6</div>
				<div>7</div>
				<div>8</div>
			</div>	 
		<div id="cheese" class="tabContent show"></div>	
			<div id="sauce">
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
			</div>
		<div id="cheese" class="tabContent show"></div>		
	 </div>
	 
	 <script>
	 	const toppingTab = document.getElementById("topping");
	 	const sauceTab = document.getElementById("sauce");
	 	const cheeseTab = document.getElementById("cheese");
	 	
	 	const tabs = [toppingTab, sauceTab, cheeseTab];
	 	
	 	const showTab = index => {
	 		for (let i = 0; i < tabs.length; ++i) {
	 			if (i === index){}
	 			tabs[i].classList.add('show');
	 			} else {
	 				tabs[i].classList.remove('show');
	 			}
	 		}
	 	};
	 </script>

</body>
</html>