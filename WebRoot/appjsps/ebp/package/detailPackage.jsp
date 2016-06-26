<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.ceit.ebs.ebp.vo.EbpPackageVo"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
EbpPackageVo ebpPackageVo = (EbpPackageVo)request.getAttribute("ebpPackageVo");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>分包详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/easyui-1.3.6/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/easyui-1.3.6/themes/icon.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/common.css" />

  </head>
  
  <body>
    
    <table class="table_common"  align="center" width="800px">
		
			<tr height="15%">
					<th class="table_head" colspan="4" style="text-align:center;">分包信息详情</th>  	
			</tr>
			<tr >
		  		 	<td class="table_td1">包名称:</td><td><input value="<%=ebpPackageVo.getPackageName()==null?"":ebpPackageVo.getPackageName() %>" name="objectName"   type="text" disabled/></td>
		   		
			</tr>
			<tr>
				<td class="table_td1">项目编号:</td>
		   		<td>
		   			<input value="<%=ebpPackageVo.getProjectId()==null?"":ebpPackageVo.getProjectId() %>" name="projectId"   type="text" disabled/>
		   		</td>
			</tr>
			<tr >
		   		<td class="table_td1">创始人代号:</td><td><input value="<%=ebpPackageVo.getCreatorId()==null?"":ebpPackageVo.getCreatorId() %>" name="creatorId"   type="text" disabled/></td>
		   		
			</tr>
			<tr>
				<td class="table_td1">是否有效:</td>
				<td >
					<input value="<%=ebpPackageVo.getIsValid()==null?"":ebpPackageVo.getIsValid() %>" name="isValid"   type="text" disabled/>
		   		</td>
			</tr>
		    <tr>
		    	<td><input name="projectId" style="display:none;" value="<%=ebpPackageVo.getId() %>" /></td>
		    	<td><input  type="button" value="返回" onclick="javascript:top.close();" align="middle"/></td>
		    </tr>
   </table>
   
     <script type="text/javascript" src="<%=path %>/resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/easyui-1.3.6/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/esourcing.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/esourcing.util.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/jquery.serializeJSON.js"></script>
	
	<script type="text/javascript">
	
		$(funciotn(){

			
		});

	</script>
  </body>
</html>
