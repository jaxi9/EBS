<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.ceit.common.util.StaticSource"%>
<%@ page import="com.ceit.ebs.sys.vo.SysModuleVo"%>
<%
	String path = request.getContextPath();
	SysModuleVo sysModuleVo =(SysModuleVo)request.getAttribute("sysModuleVo");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>模块详情页面</title>
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/easyui-1.3.6/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/easyui-1.3.6/themes/icon.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/default.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/common.css" />
	
	</head>
    <body class="easyui-layout" style="overflow-y: hidden"  scroll="no">
    	<form id="updateModuleForm" method="post">
			<table class="table_common"  align="center" width="800px">
				<tr>
					<td class="table_td1">模块名:</td>
			        <td class="alt">
			           <input style="height: 20" name="moduleName" value="<%=sysModuleVo.getModuleName() == null ? "" : sysModuleVo.getModuleName() %>" class="text w150" type="text" />
			        </td>
				</tr>
				<tr>
					<td class="table_td1">是否为叶子模块:</td>
			        <td class="alt">
			           <input style="height: 20" name="isLeaf" value="<%=sysModuleVo.getIsLeaf() == null ? "" : sysModuleVo.getIsLeaf() %>" class="text w150" type="text" />
			        </td>
				</tr>
			    <tr style="height:30px;">
			    	<td colspan="2" style="text-align:center;">
			    		<a id="save" class="easyui-linkbutton icon_margin" data-options="toggle:true">确定</a>
			    	</td>
			    </tr>
			</table>
		</form>
	
	<script type="text/javascript" src="<%=path %>/resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/easyui-1.3.6/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/esourcing.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/esourcing.util.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/jquery.serializeJSON.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#save").click(
				function(){
					if(confirm("是否确定修改？")){
						$("#updateModuleForm").submit();
					}
				}
			);
			$('#updateModuleForm').form({
				url : 'updateModuleById.action',
				onSubmit : function(){
				},
				success : function(data){
					if(eval(data)[0].result == 'true'){
						parent.refreshParentNode();
					}
				}
			});
		});
	</script>
	</body>
</html>
