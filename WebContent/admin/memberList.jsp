<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@ page import = "Test.user" %>
<%@ page import = "Test.userDB" %>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.text.SimpleDateFormat" %>


<%!
    int pageSize = 10;
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
	String id=(String)session.getAttribute("id");
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) {
	    pageNum = "1";
	}
	int currentPage = Integer.parseInt(pageNum);
	int startRow = (currentPage - 1) * pageSize + 1;
	int endRow = currentPage * pageSize;
	int number = 0;

	userDB userPro = userDB.getInstance();
	
	String searchOption=request.getParameter("searchOption");	
	String keyword=request.getParameter("keyword");
			
	ArrayList<user> memberList = userPro.getMemberAll();
	
	int count = memberList.size();
%>
<html>
<head>
	<title>회원목록</title>
	<meta charset="utf-8" />
</head>
<body>		
		
			<tr>
				<td><%=id %>님 환영합니다.</td>
				<td><a href="/admin/boardList.jsp" >전체 게시물</a></td>
				<td><a href="/admin/memberList.jsp">회원 목록</a></td>
				<td><a href="../index.jsp">메인으로</a></td>
			</tr>
		 	<p align="center">회원목록(전체 회원수:<%=count%>)</p>
		 	
			
			<% if (count == 0) { %>
			
			<table align="center">
			<tr>
			    <td>
			              가입된 회원이 없습니다.
			    </td>
			</table>
			
			<% } else {%>
			<table border="1" align="center"> 
			    <tr height="30"> 
			      <td align="center"  width="100"  >아이디</td> 
			      <td align="center"  width="100" >이름</td> 
			      <td align="center"  width="100" >전화번호</td>
			      <td align="center"  width="150" >이메일</td> 
			      <td align="center"  width="200">주소</td>
			    
			    </tr>
			<%  
			   for (int i = 0; i < memberList.size() ; i++) {
			%>
			   <tr height="30">
			    	<td  width="50" > <%= memberList.get(i).getId()%></td>
			   	 	<td><%= memberList.get(i).getName()%></td>
			   	 	<td><%= memberList.get(i).getPhone()%></td>
					<td><%= memberList.get(i).getEmail()%></td>
			    	<td ><%= memberList.get(i).getAddress()%></td>
			
			  </tr>
			<%}%>
			</table>
			<%}%>
				<div>
					<tr>
				  		<td>
				  			<select name="searchOption">
					  			<option value="id"> 아이디 </option>
								<option value="phone" >전화번호</option>
								<option value="address" >주소 </option>
				  			</select>
					  		<input type="text" id="keyword" name="keyword">
					  		<input type="submit" name="submit" value="검색">
				  		</td>
				  	</tr>
			  	</div>
			
			<div style="text-align:center">
			<%
				if(count>0){
					int pageCount =count/pageSize+(count % pageSize==0?0:1);
					int startPage=1;
					
					if(currentPage % 10 !=0)
						startPage=(int)(currentPage/10)*10+1;
					else
						startPage=((int)(currentPage/10)-1)*10 +1;
					
					int pageBlock=10;
					int endPage=startPage+pageBlock-1;
					if(endPage >pageCount) endPage=pageCount;
					
					if(startPage>10){ %>
						<a href="/admin/memberList.jsp?pageNum=<%=startPage-10 %>">[이전]</a>
					
				<% }
					
					for(int i =startPage; i<=endPage;i++){ %>
						<a href="/admin/memberList.jsp?pageNum=<%=i%>">[<%=i %>]</a>
				<% }
					
					if(endPage < pageCount){ %>
					<a href="/admin/memberList.jsp?pageNum=<%=startPage+10 %>">[다음]</a>
				
				<%
						}
					}
				%>
                        </div>
                      </div>
            
	</body>
</html>