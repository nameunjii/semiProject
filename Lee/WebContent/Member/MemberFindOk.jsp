<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
	String id =(String)request.getAttribute("id");
	String passwd=(String)request.getAttribute("passwd");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script>
function windowclose(){
	self.close();
}
</script>

<body>
	<table width="450" height="35">
		<tr>
			<td align="left">
				<b>���̵�/��й�ȣ ã��</b>
			</td>
		</tr>
	</table>
	
	<table width="440">
		<thead>
			�˻��� ���̵�/��й�ȣ �Դϴ�.<br><br><br>
		</thead>
		<tr>
			<td align="left">���̵� : <%=id %></td>
		</tr>
		<tr>
			<td align="left">��й�ȣ : <%=passwd %></td>
		</tr>
		
		
	</table>
	<table width="450">
		<tr>
			<td align="center">
				<hr><br><input type="button" value="�ݱ�" onclick="windowclose()">
			</td>
		</tr>
	</table>
</body>
</html>


















