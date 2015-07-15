<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目总体情况</title>
<script type="text/javascript">
function save(){
	  form1.action="save";
	  form1.submit();
}
</script>
</head>
<body>
<form name="form1" method="post">
项目id : <input type="text" name="prjId"><br/>  
项目名称 : <input type="text" name="prjName"><br/>
项目类型 ：  <input type="text" name="prjType">
<a href="javaScript:save()">保存</a>
</form>
</body>
</html>