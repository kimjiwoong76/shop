<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/inc/header.jsp"%>
<%@ include file="/WEB-INF/views/inc/visual.jsp"%>
<div class="sub-content">
	<div class="container">
		<div class="row">
			<div class="sub-tit">
				<p>Member ship</p>
				<h3>${page_name}</h3>
			</div>
        <form action="deleteProc.do" method="post">
	        <table class="table">
	        	 <tr>
	        	 	<th>아이디</th>
	        	 	<td><input type="text" name="shop_id"></td>
	        	 </tr>
	        	 <tr>
	        	 	<th>비밀번호</th>
	        	 	<td><input type="password" name="shop_pwd"></td>
	        	 </tr>
	        	 <tr>
	        	 	<td colspan="2">
	        	 		<input type="submit">
	        	 	</td>
	        	 </tr>
	        </table>
        </form>
    </div>
    </div>
    </div>
<%@ include file="/WEB-INF/views/inc/footer.jsp"%>