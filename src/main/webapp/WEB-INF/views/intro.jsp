<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            min-height:771px;
            padding-top:700px;
            position:relative;
        }
        .visual-fixed{
            position:fixed;
            top:0;
            left:0;
            right:0;
            bottom:0;
            z-index:-99;
            width:100%;
            height:100vh;
        }
        .visual-in{
        	position:relative;
        	height:100%;
        	z-index:1;
        	background:#000;
        }
        .welcome-box{
        	position:absolute;
        	top:50%;
        	left:50%;
        	transform:translate(-50%, -50%);
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
    </style>
</head>
<body>
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
    </section>
</body>
</html>