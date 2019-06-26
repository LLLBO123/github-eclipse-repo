<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/warriors.png);
	background-color: #000000;
	background-size:cover;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1000px',
			top : '20px'
		}, 30000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '30px',
		    top:  '25%',
		    left: '50px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Warriors</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/warriors.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/ww.mp3"
		preload="auto"></audio>
    <span id="firstline" style="font-size: 22px; color: white">大家好，这是我做的关于nba勇士球迷的网站“<span
		style="font-size: 38px; color: red">十佳球集锦</span>” 欢迎大家观赏,谢谢！点击屏幕左下角的五星勇士，可以开始欣赏勇士的魅力！！
	</span>
	<audio id="waiting" src="/static/audio/end.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 18px; color: orange; position:absolute; left :10px;top:50px" >
		针对勇士输了总决赛给予建议<br /> <span style="font-size: 18px; color: grey">
			-廖宇鹏 </span><br /> <br /> 输球已成事实，这就是人生的一部分 <br /> 未来还有很长的路要走，还有很多机会可以把握
	</div>
	<img src="/static/imgs/all.jpg"
		style="position: absolute; left: 10px; bottom: 10px; width: 150px"
		onclick="run(this);return false" 
		title="点击后，开始流浪 ！"
		/>
	<div id="moviebox" style="margin-top: 100px; display: none"
		align="center">
		<video id="movie" height="500px" controls="controls"
			src="/static/video/movie.mp4" onended="onVideoEnd();" />
	</div>
	<div id="hornor" style="display:none;position:absolute;left:10x; bottom:10px;color:white;font-size:24px" align="center">2019年发生了很多大事，
	nba总决赛结束了<span style="color:yellow">杜兰特赛季报销</span>和<span style="color:orange">汤普森受伤</span>  <br/>勇士的锋线实在没有猛龙的强，拼劲全力最后依然抵不过<br/> 我目睹了一个王朝的崛起，然后又落幕！！<br/>最后我只想说双方给出了最高水平的对决，早已没有输赢，范乔丹乃是真·乔丹！！！</div>
</body>
</html>