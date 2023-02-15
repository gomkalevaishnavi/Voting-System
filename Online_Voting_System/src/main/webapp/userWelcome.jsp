<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome User !</title>
<link rel="stylesheet" type="text/css" href="style.css"> 
</head>
<%@ include file="navbar.jsp"%> 
<body>
	<div class="form-container">
		<form action="Vote" method="post">
			<label for="voterNumber" class="form-element form-label">
				<b>Enter Your Voter Card Number</b>
			</label>
			<input id="voterNumber" name="voterNumber" class="form-element form-input" type="text">
			<br>
			
			<label for="party" class="form-element form-label">
				<b>Choose Your Party</b>
			</label>
			<br>
				<input type="radio" id="aa[]" name="party" value="AAP">
				<label for="aap"><img class="party_img" alt="aap" src="https://smedia2.intoday.in/indiatoday/images/stories/2015April/aap-logo_650_040815073952.jpg">  AAP</label>
				<br>
				<input type="radio" id="bjp" name="party" value="BJP">
				<label for="bjp"><img class="party_img" alt="bjp" src="https://m.media-amazon.com/images/I/61ENKey5QHL._SL1181_.jpg">  BJP</label>
				<br>
				<input type="radio" id="bsp" name="party" value="BSP">
				<label for="bsp"><img class="party_img" alt="bsp" src="https://n4.sdlcdn.com/imgs/i/b/g/MAHALAXMI-ART-CRAFT-BSP-Logo-SDL687949465-1-5e451.jpg">  BSP</label>
				<br>
				<input type="radio" id="congress" name="party" value="Congress">
				<label for="congress"><img class="party_img" alt="congress" src="https://m.media-amazon.com/images/I/41cz2oWpyWL.jpg">  Congress</label>
				<br>
				<input type="radio" id="cpi" name="party" value="CPI">
				<label for="cpi"><img class="party_img" alt="cpi" src="https://www.shutterstock.com/image-vector/cpim-election-logo-symbol-vector-260nw-1856593438.jpg">  CPI</label>
			<br>
			<br>

			<button type="Submit" class="form-elements form-button">Submit</button>
		</form>
	</div>
</body>
</html>