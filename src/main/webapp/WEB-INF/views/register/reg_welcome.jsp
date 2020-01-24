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
        <table class="table">
        	<thead>
        		<th>아이디</th>
        		<th>비밀번호</th>
        		<th>이름</th>
        		<th>별명</th>
                <th>이메일</th>
                <th>휴대폰번호</th>
                <th>성별</th>
        	</thead>
        	<tbody>
        	<c:forEach items="${shopMember}" var="shopMember">
        	<tr>
        		<td>${shopMember.shop_id}</td>
        		<td>${shopMember.shop_pwd}</td>
        		<td>${shopMember.shop_name}</td>
        		<td>${shopMember.shop_nickname}</td>
        		<td>${shopMember.shop_email}</td>
        		<td>${shopMember.shop_number}</td>
        		<td>${shopMember.shop_gender}</td>
        		</tr>
        		</c:forEach>
        	</tbody>                
            </tr>
        </table>
    </div>
    </div>
    </div>
<%@ include file="/WEB-INF/views/inc/footer.jsp"%>