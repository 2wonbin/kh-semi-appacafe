<%@page import="member.model.vo.Member"%>
<%@page import="member.controller.memberLogin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = (Member)session.getAttribute("memberLoggedIn"); 
%>
<!DOCTYPE html>
<style>
.nav-link{
	font-size: 30px;

	transition-duration: 0.3s;
}
.nav-link:hover{
	background-color : rgba(0,0,0,0.1);
	border-bottom : 1px solid red;
}
</style>
	<div class="container-fluid">
	    <div class="row flex-nowrap">
	        <nav class="d-md-block bg-white sidebar border-right"  style="width: 200px;">
	            <div class="sidebar-sticky pt-3">
	                <ul class="nav flex-column ">
	                    <li class="nav-item">
			                <a class="nav-link" href="<%= request.getContextPath() %>/boardList?boardType=notice">
			                   <span>공지사항</span>
			                </a>
				                        <a class="nav-link" href="<%= request.getContextPath() %>/boardList?boardType=free">
			                   <span>자유게시판</span>
			                </a>
				                       
	                        <a class="nav-link active" href="<%= request.getContextPath()%>/joojakList">
	                           <span>중고거래</span>
	                        </a>
	                         <a class="nav-link active" href="<%= request.getContextPath() %>/chat">
	                           <span>익명채팅</span>
	                        </a>
	                                   
	                        <% if(member != null && "A".equals(member.getMemberRole())) { %>
	                        <a class="nav-link" href="<%= request.getContextPath()%>/admin/memberlist">
	                           <span>관리자페이지</span>
	                        </a>
	                        <% } %>
	                    </li>
	                </ul>
	            </div>
	        </nav>
	        <div class="main-content">
        
