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
			alert("�̸��� �Է����ּ���.");
			memJoin.name.focus();
			return false;
		}
		if(memJoin.id.value==""){
			alert("ID�� �Է����ּ���.");
			memJoin.id.focus();
			return false;
		}
		if(memJoin.password1.value=""){
			alert("��й�ȣ�� �Է����ּ���.");
			memJoin.password1.focus();
			return false;
		}
		if(memJoin.password1 != memJoin.password2){
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
			memJoin.password2.focus();
			return false;
		}
		if(memJoin.email.value==""){
			alert("�̸����� �Է����ּ���.");
			memJoin.email.focus();
			return false;
		}
		if(memJoin.phone.value==""){
			alert("�ڵ��� ��ȣ�� �Է����ּ���.");
			memJoin.phone.focus();
			return false;
		}
		if(memJoin.zipcode.value==""){
			alert("�����ȣ�� �Է����ּ���.");
			memJoin.zipcode.focus();
			return false;
		}
	}
	
	function openConfirmId(joinForm){
		var url="memberIdChkAction.action?id="+document.joinForm.id.value;
		var join=document.joinForm;
		if(memJoin.id.value==""){
			alert("���̵� �Է����ּ���.");
			memJoin.id.focus();
			return false;
		}
		open(url,"confirm", "toolbar=no", )
	}
</script>