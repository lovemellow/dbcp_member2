<%@page import="member.MemberVO"%>
<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	request.setCharacterEncoding("utf-8");
    	//joinForm.jsp에서 사용자가 입력한 값들을 가져온 후
    	//db테이블에 삽입하기
    	String userid=request.getParameter("userid");
    	String password=request.getParameter("password");
    	String name=request.getParameter("name");
    	String gender=request.getParameter("gender");
    	String email=request.getParameter("email");
    	
    	//db테이블에 삽입하기
    	MemberDAO dao=new MemberDAO();
    	MemberVO vo=new MemberVO();
    	vo.setUserid(userid);
    	vo.setPassword(password);
    	vo.setName(name);
    	vo.setGender(gender);
    	vo.setEmail(email);
    	
    	int result=dao.member_insert(vo);
    	
    	if(result>0){
    		out.print("<script>");
    		out.print("alert('회원가입성공');");
    		out.print("location.href='loginForm.jsp'");
    		out.print("</script>");

    	}else{
    		out.print("<script>");
    		out.print("alert('회원가입실패');");
    		out.print("location.href='joinForm.jsp'");
    		out.print("</script>");
    	}
    	
    	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>joinProcess</title>
</head>
<body>

</body>
</html>