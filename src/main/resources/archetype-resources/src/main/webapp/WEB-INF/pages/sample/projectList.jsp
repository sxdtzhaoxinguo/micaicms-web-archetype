<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>项目总体情况</title>
<script type="text/javascript">
  function newForm(){
	  form1.action="newProject";
	  form1.submit();
  }
  
  function edit(prjid){
	  document.getElementById("prjId").value=prjid;
	  form1.action="editProject";
	  form1.submit();
  }
    
  function dele(prjid){
	  document.getElementById("prjId").value=prjid;
	  if(confirm('\n\n真的要删除该会员吗!?')){
		  form1.action="delete";
		  form1.submit();
	  }
  }
  
</script>

</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<td width="50px">priId</td>
				<td width="150px">prjName</td>
				<td width="150px">prjType</td>
				<td width="150px">操作</td>
			</tr>
		</thead>
		<tbody>
			<form name="form1" method="post">
				<input type="hidden" name="prjId" id="prjId" /> <input
					type="button" value="新建" onclick="newForm()" id="newButton" />
				<c:forEach items="${projectList}" var="project">
					<tr>
						<td>${project.prjId}</td>
						<td>${project.prjName}</td>
						<td>${project.prjType}</td>
						<td><a href="javaScript:edit('${project.prjId}')">编辑</a> <a
							href="javaScript:dele('${project.prjId}')">删除</a></td>
					</tr>
				</c:forEach>
			</form>
		</tbody>
	</table>
</body>
</html>