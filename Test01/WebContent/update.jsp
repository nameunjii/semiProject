<%@ page contentType="text/html; charset=utf-8"%>

<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<%

request.setCharacterEncoding("utf-8");

String memberID = request.getParameter("memberID");
String name = request.getParameter("name");

Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn  = null;
Statement stmt = null;
int updateCount = 0;

try{
	String jdbcDriver = "jdbc:oracle:thin:@khstudy.iptime.org:7000:ORCL";
	String dbUser = "KH0004";
	String dbPass = "oracle";
	
	String query= "update table1 set name = '"+name+"' "+
				" where memberid = '"+memberID+"'";
	
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	stmt = conn.createStatement();
	updateCount = stmt.executeUpdate(query);
	
} finally{
	if(stmt != null) try{ stmt.close(); } catch(SQLException ex){}
	if(conn != null) try{ conn.close();} catch(SQLException ex){}
}

%>

<html>
<head><title>이름 변경</title></head>
<body>

<% if(updateCount>0) { %>
<%=memberID %>의 이름을  <%=name %>(으)로 변경.
<% } else{ %>
<%=memberID %>아이디가 존재하지 않음.
<%} %>

</body>
</html>