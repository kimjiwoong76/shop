<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    	html, body{
    		margin:0;
    		padding:0;
    	}
        .main-visual{            
            height:100vh;
            position:relative;
            overflow:hidden;
        }
        .visual-fixed{
            position:fixed;
            top:0;
            left:0;
            right:0;
            bottom:0;
            z-index:1;
            width:100%;
            height:100vh;
            background:rgba(0,0,0,0.9);
        }
        .visual-in{
        	position:relative;
        	height:100%;
        	z-index:1;
        }
        .welcome-box{
        	position:absolute;
        	top:50%;
        	left:50%;
        	transform:translate(-50%, -50%);
        	text-align:center;
        }
        .welcome-box h3{
        	font-size:36px;
        	color:#fff;
        }
        .welcome-box a{
        	display:inline-block;
        	padding:3px 15px;
        	box-sizing:border-box;
        	border:1px solid #fff;
        	font-size:16px;
        	color:#fff;
        }
        .skill{
        	height:1000px;
        	position:relative;
        	z-index:1;
        	background:#fff;
        }
    </style>
    <script type="text/javascript"
	src="<c:url value="/resources/js/jquery-1.8.3.min.js"/>"></script>
	 <script src="//cdnjs.cloudflare.com/ajax/libs/gsap/2.1.3/TweenMax.min.js?ver=191202"></script>
</head>
<body>
	<script>
		var random;
		function random1(){
			random = Math.floor(Math.random()*3);	
			console.log(random);
		}
		function txt(){
			var txt = $(".welcome-box h3");
			var txt1 = "안녕하세요 개발자 지망생 김지웅 입니다";
			var txt2 = "최선을 다하는 개발자 지망생 김지웅 입니다";
			var txt3 = "언제나 노력하는 개발자 지망생 김지웅 입니다";
			random1();
			if(random == 0){
				txt.text(txt1);
			} else if(random == 1){
				txt.text(txt2);
			} else {
				txt.text(txt3);
			}
		}
		
		var height = [];
		$('section').each(function(i){
			height[i] = $('section').ourHeight();
		});
		console.log(height);
		
		$(function(){
			var max = 100;
			var min = 150;
			txt();
			$(window).scroll(function(){
				var scrollPX = $(this).scrollTop();
				if(scrollPX){
					var tween = TweenMax.to('.welcome-box', 2, {
						autoAlpha:0, ease:Power3.easeOut
					});
					
				} else {
					var tween = TweenMax.to('.welcome-box', 2, {
						autoAlpha:1, ease:Power3.easeOut
					});
					txt();
				}
			});
			
			
		});
		
		
	</script>
    <section>
        <div class="main-visual">
            <div class="visual-fixed">
            	<div class="visual-in">
                  <div class="welcome-box">
                      <h3>안녕하세요 개발자 지망생 김지웅 입니다!!!</h3>
                      <a href="/index.do">쇼핑몰 포트폴리오 보러 가기</a>
                  </div>
              </div>
            </div>
        </div>
        <section class="skill">
        </section>
        <section>
        	1
        </section>
    </section>
</body>
</html>