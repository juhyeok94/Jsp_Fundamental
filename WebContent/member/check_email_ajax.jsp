<%@page import="kr.or.kpc.dao.CustomerDao"%>
<%@ page language="java" contentType="application/json; charset=UTF-8"%>

<%
	String email = request.getParameter("email");
	CustomerDao dao = CustomerDao.getInstance();
	boolean existed = dao.isExisted(email);
	if(existed){
		//보낼때 반대로 생각해서 보내야됨
		//존재하면 fail, 존재하지 않으면 ok
		%>
		{"result" : "fail"}
		<%
	}else{
		%>
		{"result" : "ok"}
		<%
	}
%>


