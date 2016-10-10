<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<html>
<head><title>회원 목록</title></head>
<body>
TABLE1 테이블의 내용
<table width="100%" border=1>
	<tr>
		<td>이름</td>
		<td>아이디</td>
		<td>이메일</td>
	</tr>

<%

//1. JDBC 드라이버 로딩
Class.forName("oracle.jdbc.driver.OracleDriver");

Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try{
	String jdbcDriver = "jdbc:oracle:thin:@khstudy.iptime.org:7000:ORCL";
	String dbUser = "KH0004";
	String dbPass = "oracle";
	
	String query = "select * from table1 order by name"; //기본은 오름차순(asc). 내림차순은 desc
	
	//2. 데이터베이스 커넥션 생성
	conn = DriverManager.getConnection(jdbcDriver, dbUser, dbPass);
	
	//3. Statement 생성
	stmt = conn.createStatement();
	
	//4. 쿼리 실행
	rs = stmt.executeQuery(query);
	
	//5. 쿼리 실행 결과 출력
	while(rs.next()){

%>

	<tr>
		<td><%=rs.getString("name")%></td>
		<td><%=rs.getString("memberid")%></td>
		<td><%=rs.getString("email")%></td>
	</tr>

<%

		}
	} catch(SQLException ex){
		out.println(ex.getMessage());
		ex.printStackTrace();
	} finally{
		//6. 사용한 Statement 종료
		if(rs != null) try{ rs.close(); } catch(SQLException ex){}
		if(stmt != null) try{ rs.close(); } catch(SQLException ex){}
		
		//7. 커넥션 종료
		if(conn != null) try{ conn.close(); } catch(SQLException ex){}
	}
%>

</table>
</body>
</html>