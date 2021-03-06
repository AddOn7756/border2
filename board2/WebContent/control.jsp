<%@page import="model.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,model.message.*" errorPage="error.jsp"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="messageDAO" class="model.message.MessageDAO" />
<jsp:useBean id="messageVO" class="model.message.MessageVO" />
<jsp:useBean id="memberDAO" class="model.member.MemberDAO" />
<jsp:useBean id="memberVO" class="model.member.MemberVO" />
<jsp:setProperty property="*" name="messageVO"/>
<jsp:setProperty property="*" name="memberVO"/>

<%
	// 컨트롤러를 호출했을때의 요청 파라미터를 분석
	String action=request.getParameter("action");
	//System.out.println(action);
	
	
	if (action.equals("login")){
		MemberVO member = memberDAO.getMem(memberVO);
		if(member!=null){
			session.setAttribute("member", member);
			response.sendRedirect("control.jsp?action=list");
		}
		else{
			out.println("<script>alert('로그인 실패!');history.go(-1)</script>");
		}
	}
	else if(action.equals("logout")){
		session.invalidate();
		System.out.println(action);
		response.sendRedirect("control.jsp?action=index");
		System.out.println(action);
	}
	else if(action.equals("reg")){
		if(memberDAO.insertMem(memberVO)){
			response.sendRedirect("control.jsp?action=index");
		}
		else{
			throw new Exception("DB 추가 오류 발생!");
		}
	}
	else if(action.equals("list")){
		ArrayList<MessageVO> datas=messageDAO.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("list.jsp");
	}
	else if(action.equals("mylist")){
		ArrayList<MessageVO> datas=messageDAO.getDBList();
		request.setAttribute("datas", datas);
		pageContext.forward("mylist.jsp");
		System.out.println("control.jsp에 mylist에서 발생");
	}
	else if(action.equals("insert")){
		if(messageDAO.insertDB(messageVO)){
			response.sendRedirect("control.jsp?action=list");
		}
		else{
			throw new Exception("DB 추가 오류 발생!");
		}
	}
	else if(action.equals("delete")){
		if(messageDAO.deleteDB(messageVO)){
			response.sendRedirect("control.jsp?action=list");
		}
		else{
			throw new Exception("DB 삭제 오류 발생!");
		}
	}
	else if(action.equals("update")){
		if(messageDAO.updateDB(messageVO)){
			response.sendRedirect("control.jsp?action=list");
		}
		else{
			throw new Exception("DB 변경 오류 발생!");
		}
	}
	else if(action.equals("edit")){
		MemberVO member = (MemberVO)session.getAttribute("member");
		System.out.println("edit에서 발생"+member.getMid());
		if(request.getParameter("writer").equals(member.getMid())){
			MessageVO data=messageDAO.getDBData(messageVO);
			request.setAttribute("data", data);
			pageContext.forward("edit.jsp");
		}		
		else{
			out.println("<script>alert('글 작성자가 아닙니다');history.go(-1)</script>");
		}
	}
	else{
		out.println("<script>alert('파라미터 확인!');history.go(-1)</script>");
		//throw new Exception("파라미터 확인!");
	}
%>
    
    

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>컨트롤러</title>
</head>
<body>

</body>
</html>