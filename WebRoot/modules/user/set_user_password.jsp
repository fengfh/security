<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<%@include file="/common/meta.jsp"%>
		<title>用户密码重置</title>
		<base target="_self"/>
		<ui:combine widgets="validator,blockui,dialog,messagebox"></ui:combine>
		<ui:script src="/modules/user/script/set_user_password.js"></ui:script>
	</head>
	
	<body class="container-body">
	<div class="apply-page">
		<div class="page-title">
			<h2>
				重置用户密码
			</h2>
		</div>
		
		<div class="container-fluid">
	        <form id="USER_PASSWORD_EDIT_FORM" action="#" data-widget="validator" class="form-horizontal" >
				<!-- panel 内容 start -->
				<div class="panel apply-panel">
					<!-- panel 头部内容 start -->
					<div class="panel-head">
						<div class="row-fluid">
							<div class="span6 first">							
								重置用户密码
							</div>
							<div class="span6"></div>	
						</div>
						<a href="#" class="toggle"></a>
					</div>
					<!-- panel 头部内容 end -->
					
					<!-- panel 中间内容 start -->
					<div class="panel-content">
						<!-- 数据列表样式 -->
						<table class="form-table col2-fluid" >
							<!--<caption>基本信息</caption>-->
							<tbody>
							    <input type="hidden" name="id" id="id" value="${user.id}" />
							    <tr>
									<th>用户名称：</th>
									<td>${user.name}</td>
								</tr>
								<tr>
									<th>
										新密码：
									</th>
									<td>
										<input type="password" id="password" data-validator="required[密码不能为空],equalToField[confirmPassword,密码和确认密码不一致]"  maxlength="40" class="input-large" />
									</td>
								</tr>
								<tr>
									<th>
										确认密码：
									</th>
									<td>
										<input type="password"  id="confirmPassword" data-validator="required,equalToField[password,密码和确认密码不一致]" maxlength="40" class="input-large"/>
									</td>
								</tr>
							</tbody>
						</table>							
					</div>
					<!-- panel 中间内容 end -->
                    <div class="panel-foot">
						<div class="form-actions col2-fluid">
							<button type="button" class="btn"  onclick="doSave();return false;">保&nbsp;存</button>
							<button type="button" class="btn" onclick="$(this).dialogClose();return false;">关&nbsp;闭</button>
						</div>
					</div>
				</div>
				<!-- panel 内容 end -->
			</form>
		</div>
	</div>
	</body>
</html>