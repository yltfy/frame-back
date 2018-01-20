<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/WEB-INF/pages/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>后台模板首页</title>
		<!-- 引入通用文件 start -->
		<%@include file="/WEB-INF/pages/common/common.jsp" %>
		<!-- end 引入通用文件 -->
		
		<!-- 引入模板页面的css start -->
		<link href="${basePath }/resources/css/layout.css" rel="stylesheet" type="text/css" />
		<!-- end 引入模板页面的css -->
		
		<!-- 引入tab标签页的css和js文件   start -->
		<link href="${basePath }/resources/plugins/tab/bootstrap.addtabs.css" rel="stylesheet" type="text/css" />
		<link href="${basePath }/resources/plugins/tab/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="${basePath}/resources/plugins/tab/bootstrap.min.js"></script>
		<script type="text/javascript" src="${basePath}/resources/plugins/tab/bootstrap.addtabs.js"></script>
		<!-- end 引入tab标签页的css和js文件  -->
		
		<!-- 左侧下拉菜单样式    start  -->
		<link rel="stylesheet" href="${basePath }/resources/plugins/dist/sidebar-menu.css">
		<!-- end 左侧下拉菜单样式 -->
		
		<!-- 样式重置    start  -->
		<link rel="stylesheet" href="${basePath }/resources/css/common.css">
		<!-- end 样式重置 -->
		
	</head>
	<body>
		<!-- container start -->
		<div id="container">
			<!-- header start  -->
			<div id="header">
			</div>
			<!-- end header -->
			
			<!-- mainContent start -->
			<div id="mainContent">
			
				<!-- mainContent left start -->
				<div id="sidebar">
				
					<!-- t_left start -->
					<div class="t_left">
					
						<!-- nav start -->
						<aside class="main-sidebar">
							<section  class="sidebar">
								<div class="sys_nav">
									<!-- nav_left start -->
									<div class="nav_left">
										<ul class="sidebar-menu">
											<li class="header"><img src="${basePath}/resources/images/logo.png" width="165px" style="margin-left:-10px;" /></li>
											<li class="treeview">
												<a href="javascript:void(0);">
													<i class="fa fa-dashboard"></i> <span>系统后台</span> <i class="fa fa-angle-left pull-right"></i>
												</a>
												<ul class="treeview-menu">
													<li>
														<a data-addtab="user" data-ajax="true" data-url="${adminPath }/user/list"><i class="fa fa-circle-o"></i>用户管理</a>
													</li>
													<li>
														<a data-addtab="role" data-ajax="true" data-url="${adminPath }/role/list"><i class="fa fa-circle-o"></i>角色管理</a>
													</li>
													<li>
														<a data-addtab="permission" data-ajax="true" data-url="${adminPath }/permission/list"><i class="fa fa-circle-o"></i>权限管理</a>
													</li>
												</ul>
											</li>
											<li class="treeview">
												<a href="#">
													<i class="fa fa-cubes"></i>
													<span>基础信息</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
												<ul class="treeview-menu">
													<li>
														<a data-addtab="dictionary" data-ajax="true" data-url="${adminPath }/pdictionary/list"><i class="fa fa-circle-o"></i>产品信息</a>
													</li>
													<li>
														<a data-addtab="specification" data-ajax="true" data-url="${adminPath }/specification/list"><i class="fa fa-circle-o"></i>规格信息</a>
													</li>
													<li>
														<a data-addtab="supplier" data-ajax="true" data-url="${adminPath }/supplier/list"><i class="fa fa-circle-o"></i>供应商信息</a>
													</li>
													<li>
														<a data-addtab="client" data-ajax="true" data-url="${adminPath }/client/list"><i class="fa fa-circle-o"></i>客户信息</a>
													</li>
													<li>
														<a data-addtab="area" data-ajax="true" data-url="${adminPath }/area/list"><i class="fa fa-circle-o"></i>仓库设置</a>
													</li>
												</ul>
											</li>
											<li class="treeview">
												<a href="#">
													<i class="fa fa-laptop"></i>
													<span>产品管理</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
												<ul class="treeview-menu">
													<li>
														<a data-addtab="model" data-ajax="true" data-url="${adminPath }/module/list"><i class="fa fa-circle-o"></i>模块管理</a>
													</li>
													<li>
														<a data-addtab="fix" data-ajax="true" data-url="${adminPath }/fix/list"><i class="fa fa-circle-o"></i>产品维修</a>
													</li>
													<li>
														<a data-addtab="breaks" data-ajax="true" data-url="${adminPath }/breaks/list"><i class="fa fa-circle-o"></i>产品报废</a>
													</li>
													<li>
														<a data-addtab="back" data-ajax="true" data-url="${adminPath }/back/list"><i class="fa fa-circle-o"></i>产品回退</a>
													</li>
													<li>
														<a data-addtab="product" data-ajax="true" data-url="${adminPath }/product/list"><i class="fa fa-circle-o"></i>产品总览</a>
													</li>
												</ul>
											</li>
											<li class="treeview">
												<a href="#">
													<i class="fa fa-table"></i> <span>订单管理</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
												<ul class="treeview-menu">
													<li>
														<a data-addtab="purchase" data-ajax="true" data-url="${adminPath }/purchase/list"><i class="fa fa-circle-o"></i>下单管理</a>
													</li>
													<li>
														<a data-addtab="order" data-ajax="true" data-url="${adminPath }/order/list"><i class="fa fa-circle-o"></i>订单管理</a>
													</li>
													<li>
														<a data-addtab="shoppingcart" data-ajax="true" data-url="${adminPath }/shoppingcart/list"><i class="fa fa-circle-o"></i>购物车</a>
													</li>
												</ul>
											</li>
											<li class="treeview">
												<a href="#">
													<i class="fa fa-files-o"></i>
													<span>仓库管理</span>
													<i class="fa fa-angle-left pull-right"></i>
													<span class="label label-primary pull-right">4</span>
												</a>
												<ul class="treeview-menu">
													<li>
														<a data-addtab="waitStorage" data-ajax="true" data-url="${adminPath }/waitstore/list"><i class="fa fa-circle-o"></i>待出库管理</a>
													</li>
													<li>
														<a data-addtab="outStorage" data-ajax="true" data-url="${adminPath }/outstore/list"><i class="fa fa-circle-o"></i>出库单管理</a>
													</li>
													<li>
														<a data-addtab="storage" data-ajax="true" data-url="${adminPath }/storage/list"><i class="fa fa-circle-o"></i>库存管理</a>
													</li>
												</ul>
											</li>
											<li class="treeview">
												<a href="#">
													<i class="fa fa-pie-chart"></i>
													<span>报表管理</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
												<ul class="treeview-menu">
													<li><a data-addtab="chartmodel" data-ajax="true" data-url="${adminPath}/contentstat/list"><i class="fa fa-circle-o"></i>报表模板</a></li>
													<li><a data-addtab="chartdemo" data-ajax="true" data-url="${adminPath}/adminstat/demo"><i class="fa fa-circle-o"></i>本周多模块</a></li>
												</ul>
											</li>
											<li>
												<a href="#">
													<i class="fa fa-file-text"></i>
													<span>日志管理</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
												<ul class="treeview-menu">
													<li><a data-addtab="log" data-ajax="true" data-url="${adminPath }/adminstat/list"><i class="fa fa-circle-o"></i>系统日志</a></li>
													<li><a href="#"><i class="fa fa-circle-o"></i>操作日志</a></li>
												</ul>
											</li>
											<li class="treeview">
												<a href="#">
													<i class="fa fa-wrench"></i> <span>系统工具</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
												<ul class="treeview-menu">
													<li><a id="druid" data-addtab="perofrmance" data-ajax="false" data-url="${basePath }/druid/index.html"><i class="fa fa-circle-o"></i>性能监控</a></li>
													<li><a data-addtab="interfaceTest" data-ajax="true" data-url="${adminPath }/tools/interfaceTest"><i class="fa fa-circle-o"></i>接口测试</a></li>
													<li><a data-addtab="pathTest" data-ajax="true" data-url="${adminPath }/tools/pathTest"><i class="fa fa-circle-o"></i>全路径测试</a></li>
												</ul>
											</li>
											<li>
												<a href="javascript:void(0);" id="closeAll" onclick="tzSystem.close()">
													<i class="fa fa-close"></i><span>关闭页签</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
											</li>
											<li>
												<a href="javascript:void(0);" id="logout" onclick="tzSystem.logout(this)">
													<i class="fa fa-sign-out"></i><span>退出系统</span>
													<i class="fa fa-angle-left pull-right"></i>
												</a>
											</li>
										</ul>
									</div>
									<!-- end nav_left -->
								</div>
							</section>
						</aside>
						<!-- end nav -->
						
					</div>
					<!-- end t_left -->
					
				</div>
				<!-- end  mainContent left -->
				
				<!-- mainContent right start -->
				<div id="content">
				
					<!-- start t_right -->
					<div class="t_right">
					
						<div class="nav_right">
							<div>
								<!-- nav_tabs start-->
								<ul class="nav nav-tabs" id="tabs1" role="tablist">
									<li class="active" role="presentation">
										<a aria-controls="home" data-toggle="tab" href="#home" role="tab">主页</a>
									</li>
								</ul>
								<!-- end nav_tabs -->
								
								<!-- tab_content start -->
								<div class="tab-content">
									<div class="tab-pane active" id="home" role="tabpanel">内容</div>
								</div>
								<!-- end tab_content -->
								
							</div>
						</div>
					</div>
					<!-- end t_right -->
				</div>
				<!-- end mainContent right -->
				
			</div>
			<!-- end mainContent -->
			
			<div id="footer">
			</div>
		</div>
		<!-- 左侧下拉菜单js文件引入 -->
		<script src="${basePath }/resources/plugins/dist/sidebar-menu.js"></script>
		<script>
			/* 系统页面专项业务 start */
			var tzSystem = {
					timer:null,
					iframe:function(id){//改变工具栏目下的性能检测的iframe高度
						$("#"+id).on("click",function(){
							var timer = null;
							var mark = true;
							clearInterval(timer);
							timer = setInterval(function(){
								if(mark){
									if($(document).has("iframe")){
										mark = !mark;
										$("iframe").css("height","800px");
										clearInterval(timer);
									}
								}
							},30);
						});
					},
					logout:function(obj){//退出业务
						$.tzConfirm({title:"退出提示",ghost:false,icon:"warn",content:"您确定退出吗?",callback:function(ok, $dialog, opts){
							if(ok){
								tzAjax.request({
									path:basePath,
									model:"login",
									method:"logout",
									success:function(data){
										if(data == "success"){
											window.location.href = basePath;
										}
										$dialog.next().remove();
										tzUtil.animates($dialog, opts.animate);
									}
								});
							}
						}});
					},
					close:function(){//左侧关闭页签初始化
						var len = $(".tab-content").find(".tab-pane").length;
						if(len >1){
							$.tzAlert({
								title:"关闭标签提示",
								icon:"warn",
								ghost:false,
								content:"确定关闭所有页签吗？",
								callback:function(ok, $dialog, opts){
									if(ok){
										$dialog.next().remove();
										tzUtil.animates($dialog, opts.animate);
										$.addtabs.closeAll("#tabs1");
									}
								}
							});
						}
					},
					showUser:function(){
						$(".user_detail_user").click(function(){
							$(".user_more_detail").fadeIn(function(){
								$(this).css("display","block");
							});
							clearTimeout(tzSystem.timer);
							tzSystem.timer = setTimeout(function(){
								$(".user_more_detail").fadeOut(function(){
									$(this).css("display","none");
								});
							},3000);
						});
					},
					showDetail:function(){
						$(".user_more_detail").mouseover(function(){
							clearTimeout(tzSystem.timer);
							$(this).css("display","block");
						});
						$(".user_more_detail").mouseout(function(){
							tzSystem.timer = setTimeout(function(){
								$(".user_more_detail").fadeOut(function(){
									$(this).css("display","none");
								});
							},1000);
						});
					},
					updatePw:function(obj){
						$.tzConfirm({
							width:450,
							height:200,
							title:"<i class='fa fa-wrench' ></i>&nbsp;修改密码",
							ghost:false,
							icon:"",
							sureText:"保存",
							content:"<ul class='predata'>"+
							"			<li>"+
							"				<a><span>新的密码</span><input type='password' id='index-user-pwd' value='' /></a>"+
							"			</li>"+
							"			<li>"+
							"				<a><span>密码确认</span><input type='password' id='index-user-opwd' value='' /></a>"+
							"			</li>"+
							"		</ul>",
							callback:function(ok, $dialog, opts){
								if(ok){
									var pwd = $("#index-user-pwd").val();
									var opwd = $("#index-user-opwd").val();
									if(pwd != opwd){
										loading("两次密码不一致，请重新输入",3);
										return;
									}else{
										tzAjax.request({
											path:adminPath,
											model:"user",
											method:"update",
											success:function(data){
												if(data == "success"){
													loading("修改成功",2);
													$("#index-user-pwd").val("");
													$("#index-user-opwd").val("");
												}else{
													loading("密码修改失败，请联系管理员",3);
												}
											}
										},{password:pwd,id:"${user_log.id}"});
									}
								}
								$dialog.next().remove();
								tzUtil.animates($dialog, opts.animate);
							}
						});
					},
					relation:function(){//通过存储过程统计信息数量
						
						var userData  = getSession("ke_usercount_relation", true);
						if(isNotEmpty(userData)){
							/* var data = JSON.parse(userData); */
							var data = eval("("+userData+")");
							for(var key in data){
								var c = key.replace("@","");
								$(".ru_"+c).text(data[key]);
							}
						}else{
							tzAjax.request({
								path:basePath,
								model:"system",
								method:"countTip",
								success:function(data){
									setSession("ke_usercount_relation", data, true);
									var json = eval("("+userData+")");
									for(var key in json){
										var c = key.replace("@","");
										$(".ru_"+c).text(jsoon[key]);
									}
								}
							});
						}
					}
			};
			/* end 系统页面专项业务  */
			
			/* 初始化调用函数 start */
			$(function(){
				
				$.sidebarMenu($('.sidebar-menu'));//左侧下拉菜单js初始化
				
				tzSystem.iframe("druid");//调整iframe的width和height
				
			});
			/* end 初始化调用函数 */
		</script>
	</body>
</html>