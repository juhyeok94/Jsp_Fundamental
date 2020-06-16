<%@page import="kr.or.kpc.dto.MemberDto"%>
<%@page import="kr.or.kpc.dao.MemberDao"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 메서드를 호출할수는 있으나 사용불가 -->
	<%!
		private String name;
		public int plus(int a, int b){
			return a+b;
		}
	%>
	
	<%
		int result = plus(10,20);
		out.println(result);
	%>
	
	<%= result	%>

	<%
		MemberDto dto = new MemberDto(1,"성영한","서울");
	%>
	
	<%=dto.getName() %>, <%=dto.getNum() %> <br>
	
	<%
		MemberDao dao = MemberDao.getInstance();
		ArrayList<MemberDto> list = dao.select();
	%>
	
	<table>
		<tr>
			<th>번호</th><th>이름</th>		
		</tr>

			<%for(MemberDto memberDto : list){ %>
		<tr>
			<th><%=memberDto.getNum() %></th>
			<th><%=memberDto.getName() %></th>
		</tr>
		<%} %>
	</table>
	
	
	
	
	
</body>
</html>