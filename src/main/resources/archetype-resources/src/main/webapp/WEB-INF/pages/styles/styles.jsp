<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/standard/css/style.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/jquery/jquery-ui.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/bootstrap/css/bootstrap.min.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.calendar.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.infodiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.noticediv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.singlepicdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.multipicdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.queryresultdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.modelinfodiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.serviceinfodiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.servicepicdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.floatdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.videodiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.flashdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.windowdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.popupdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.listdiv.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv1.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv2.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv3.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv4.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv5.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv6.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv7.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv8.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv9.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv10.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/customui/css/jquery.navdiv11.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/jqwidgets/styles/jqx.base.css" />
<link type="text/css" rel="stylesheet" href="<%=basePath%>styles/skin-default/jqwidgets/styles/jqx.bootstrap.css" />

<script type="text/javascript" src="<%=basePath%>styles/skin-default/jquery/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/jquery/jquery-ui.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/jquery/jquery.form.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/echarts/echarts-all.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/formvalidator/formValidator-4.1.3.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/formvalidator/formValidatorRegex.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.calendar.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.infodiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.noticediv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.singlepicdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.multipicdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.queryresultdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.modelinfodiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.serviceinfodiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.servicepicdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.floatdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.videodiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.flashdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.windowdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.popupdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.listdiv.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv1.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv2.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv3.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv4.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv5.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv6.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv7.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv8.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv9.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv10.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.navdiv11.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.PrintArea.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/customui/js/jquery.circlebtns.js"></script>
<script type="text/javascript" src="<%=basePath%>styles/skin-default/jqwidgets/jqx-all.js"></script>

<script type="text/javascript" src="<%=basePath%>styles/skin-default/echarts/echarts.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
<!--
.right_main {
  background: #EFEFEF;
  position: relative;
  float: right;
  width: 1110px;;
}
-->
</style>
