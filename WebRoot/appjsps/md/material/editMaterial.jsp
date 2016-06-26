<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ceit.ebs.md.vo.MdFeatVo"%>
<%@ page import="com.ceit.ebs.md.vo.MdFeatValVo"%>
<%@ page import="com.ceit.ebs.md.vo.MdMaterialVo"%>
<%@ page import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	String path = request.getContextPath();
	List<MdFeatValVo> list = (List<MdFeatValVo>)request.getAttribute("listMdFeatValVo");
	MdMaterialVo mdMaterialVo = (MdMaterialVo)request.getAttribute("mdMaterialVo");
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>物料新增</title>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/easyui-1.3.6/themes/default/easyui.css"/>
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/easyui-1.3.6/themes/icon.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/common.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/resources/css/ebs.css" />
</head>
<body>
	<form id="MatMerge" method="post">
	<div align="center" class="w840">
		<table class="table_common">
			<tr>
				<td colspan="4" style="text-align:center;">
					<span class="span_icon_head">
					<span class="column_head_word">修改物料信息</span>
					</span>
				</td>
			</tr>	
	<tr>
    	<td colspan="4" class="head_padding_left">基本信息</td>
    </tr>
	<tr>
    	<td class="table_td1">物料名称:</td><td><input class="easyui-validatebox title_input" type="text" value="<%=mdMaterialVo.getName()==null?"":mdMaterialVo.getName() %>" name="name"></input><font class="need_color">*</font></td>
    	<td class="table_td1">物料描述:</td><td><input class="easyui-validatebox title_input" value="<%=mdMaterialVo.getRemark()==null?"":mdMaterialVo.getRemark() %>" type="text" name="remark"></input><font class="need_color">*</font></td>
    </tr>
	<tr>
    	<td class="table_td1">类型:</td><td><input class="easyui-validatebox title_input" value="<%=mdMaterialVo.getType()==null?"":mdMaterialVo.getType() %>" type="text" name="type"></input><font class="need_color">*</font></td>
    	<td class="table_td1">购买等级:</td><td><input class="easyui-validatebox title_input" value="<%=mdMaterialVo.getPurchaseLevel()==null?"":mdMaterialVo.getPurchaseLevel() %>" type="text" name="purchaseLevel"></input><font class="need_color">*</font></td>
    </tr>
	<tr>
    	<td class="table_td1">操作状态:</td><td><input class="easyui-validatebox title_input" value="<%=mdMaterialVo.getOpStatus()==null?"":mdMaterialVo.getOpStatus() %>" type="text" name="opStatus"></input><font class="need_color">*</font></td>
    	<td colspan="2"></td>
    </tr>
    <tr>
    	<td colspan="4" class="head_padding_left">物料属性值</td>
    </tr>
    	<tr>
        	<td colspan="4" class="table_td1 new_td1">
    <%
    	for(int i = 0;i<list.size();i++){
    	%>
        		<ul class="feat_ul">
        			<li class="feat_ul_li1"><%=list.get(i).getAliasName()==null?"": list.get(i).getAliasName()%>:</li>
        			<li class="feat_ul_li2">
        				<input name="featVALUE" value="<%=list.get(i).getName()==null?"":list.get(i).getName()%>" type="text"/><font class="need_color">*</font>
        			</li>
        		</ul>
    	<%}
    %>
        	</td>
        </tr>		
    <tr>
    	<td colspan="4">
    		<span class="button_span_location">
    		<a id="save" class="easyui-linkbutton icon_margin" data-options="toggle:true">确定</a>&nbsp;
			<a id="back" class="easyui-linkbutton icon_margin" data-options="toggle:true">重置</a>
    		</span>
    	</td>
    </tr>
		</table>
	</div>
	</form>
	<script type="text/javascript" src="<%=path %>/resources/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/easyui-1.3.6/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/easyui-1.3.6/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/esourcing.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/esourcing.util.js"></script>
	<script type="text/javascript" src="<%=path %>/resources/js/jquery.serializeJSON.js"></script>
<script>
	$(function(){
	
		$('#MatMerge').form({
		url:'mergeMaterial.action',
		dataType:"json",
		onSubmit:function(){
	    	var formJson = $('#MatMerge').serializeJSON();
			if(formJson.name==""){
				alert("物料名称不能为空！");
				return false;
				}
		},
		success:function(data){
			if(jsonData = esourcing.util.strToJson(data)){
				if(jsonData.result=='true'){
					alert("修改成功！");
					esourcing.util.goUrlCloself();
				}else{
					alert("修改属性失败！");
					return false;
				}
			}else{
			
			}
		}
	});
	
	$("#back").click(
		function(){
			$('#MatMerge')[0].reset();
		}
	);
		
	$("#save").click(
		function(){
			$("#MatMerge").submit();
		}
	);
		
});
</script>
</body>
</html>
	