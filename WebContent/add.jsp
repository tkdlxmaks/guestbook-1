<%@page import="kr.ac.sungkyul.guestbook.dao.GuestbookDao"%>
<%@page import="kr.ac.sungkyul.guestbook.vo.GuestbookVo"%>
<%
	request.setCharacterEncoding( "utf-8" );

	String name = request.getParameter( "name" );
	String password = request.getParameter( "pass" );
	String content = request.getParameter( "content" );
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setContent(content);
	
	GuestbookDao dao = new GuestbookDao();
	dao.insert(vo);
	
	response.sendRedirect( "/guestbook" );
%>