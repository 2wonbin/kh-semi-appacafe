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
	border-bottom : 1px solid red;
}
</style>
	<div class="container-fluid">
	    <div class="row flex-nowrap">
	        <nav class="d-md-block bg-white sidebar border-right">
	            <div class="sidebar-sticky pt-3 ">
	                <ul class="nav flex-column ">
	                    <li class="nav-item">
	                        <a class="nav-link active" href="#">
	                           <span>게시판1</span>
	                        </a>
	                        <a class="nav-link" href="#">
	                           <span>게시판2</span>
	                        </a>
	                        <a class="nav-link" href="#">
	                           <span>게시판3</span>
	                        </a>
	                        <a class="nav-link" href="#">
	                           <span>게시판4</span>
	                        </a>
	                        
	                        <% if(member != null && "A".equals(member.getMemberRole())) { %>
	                        <a class="nav-link" href="<%= request.getContextPath()%>/admin/memberList">
	                           <span>관리자페이지</span>
	                        </a>
	                        <% } %>
	                    </li>
	                </ul>
	            </div>
	        </nav>
	        <div class="main-content">
        
