<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>      
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目总体情况</title>
<script type="text/javascript">
  function update(prjid){
	  document.getElementById("prjId").value=prjid;
	  form1.action="updateProject";
	  form1.submit();
  }
  </script>
</head>
<body>
<form name="form1" method="post"> 
<input type="hidden" id="prjId" value="${projectPO.prjId}"/>
项目id : <input type="text" name="prjId" value="${projectPO.prjId}"><br/>  
项目名称 : <input type="text" name="prjName" value="${projectPO.prjName}">  <br/>
项目类型 ：<input type="text" name="prjType" value="${projectPO.prjType}">
<a href="javaScript:update('${projectPO.prjId}')">保存</a>
</form>
</body>
</html>