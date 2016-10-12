<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Struts2 Board</title>


<link rel="stylesheet" href="/struts2_board/board/common/css/css.css" type="text/css">

<script type="text/javascript">
	function check(){
		var memJoin = document.joinForm;
		if(memJoin.name.value==""){
			alert("이름을 입력해주세요.");
			memJoin.name.focus();
			return false;
		}
		if(memJoin.id.value==""){
			alert("ID를 입력해주세요.");
			memJoin.id.focus();
			return false;
		}
		if(memJoin.password1.value=""){
			alert("비밀번호를 입력해주세요.");
			memJoin.password1.focus();
			return false;
		}
		if(memJoin.password1 != memJoin.password2){
			alert("비밀번호가 일치하지 않습니다.");
			memJoin.password2.focus();
			return false;
		}
		if(memJoin.email.value==""){
			alert("이메일을 입력해주세요.");
			memJoin.email.focus();
			return false;
		}
		if(memJoin.phone.value==""){
			alert("핸드폰 번호를 입력해주세요.");
			memJoin.phone.focus();
			return false;
		}
		if(memJoin.zipcode.value==""){
			alert("우편번호를 입력해주세요.");
			memJoin.zipcode.focus();
			return false;
		}
	}
	
	function openConfirmId(joinForm){
		var url="memberIdChkAction.action?id="+document.joinForm.id.value;
		var join=document.joinForm;
		if(memJoin.id.value==""){
			alert("아이디를 입력해주세요.");
			memJoin.id.focus();
			return false;
		}
		open(url,"confirm", "toolbar=no", )
	}
</script>