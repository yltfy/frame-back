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
		<link rel="shortcut icon" href="${basePath}/resources/images/title.jpg">
		<style>
			#addDo,#goback{width:30px;height:30px;border-radius:15px;background:green;text-align:center;line-height:30px;font-size:22px;position:absolute;right:18px;top:160px;color:#fff;}
			#goback{position:absolute;top:200px;cursor:pointer;}
			#l_edit:hover{color:red;}
			#r_edit:hover{color:white;} 
			
			/*r_table start*/
			.r_table{font-family:"微软雅黑";color:#666;border:1px solid #ccc;margin:0 1% 0 1%;background:#fff;margin-top:30px;padding-bottom: 10px;}
			.r_table .r_title{width:100%;height:40px;background:#eee;border-bottom:1px solid #ccc;margin-bottom: 10px;}
			.r_table .r_title i{width:16px;height:14px;display:block;background:url("${basePath}/resources/images/ht_icon.png") no-repeat -386px -15px;float:left;margin:12px;}
			.r_table .r_title p{height:40px;line-height:40px;border-left:1px solid #ccc;float:left;padding-left:5px;color:#000;}			
			
			.r_table .r_search{height: 30px;float: right;padding-top: 5px;padding-right: 14px;position:relative;}
			.r_table .r_search .r_text{width:75%;height:28px;line-height:28px;border:1px solid #ddd;float:right;text-indent:1rem;}
			.r_table .r_search .r_btn{width:20%;height:29px;background:#2b82cc;color:#fff;cursor: pointer;border:0;float:right;}
			
			/* function start */
			.t_common{background:#fff;width:84px;height: 28px;border:1px solid #CCC;cursor: pointer;}
			.t_common a{display:inline-block;width: 34px;height: 28px;background: url(${basePath}/resources/images/ico-message.png) no-repeat;opacity: 0.7;float:left;}
			.t_common span{display: inline-block;width:50px;height: 28px;float:left;text-align: left;text-indent:0.4rem;font-size:14px;line-height: 28px;}
			.t_common:hover{background: #fff;border: 1px solid #a7adb7;}
			.t_common:hover a{opacity: 1;}
			.t_common .tc_add{background-position:  13px -418px;}
			.t_common .tc_delete{background-position:  13px -322px;}
			.t_common .tc_reload{background-position:  13px -707px;}
			/*end function*/
			
			#ul1 {border: 1px solid #ede4d7;width: 215px;display: none;background: #fff;position: absolute;right: 13px;top: 35px;border-top: none;}
			#ul1 li a { line-height: 30px; text-decoration: none; color: black; display: block;padding-left: 10px;}
			#ul1 li:hover{ background: #ede4d7; color: white; }
			/*end r_table*/

			/*r_table_list start*/
			.r_table .r_table_list{width:100%;}
			.r_table .r_table_list .t_tab{border-collapse:collapse;width:98%;text-align:center;margin:0 1%;}
			.r_table .r_table_list tr th{line-height:35px;background:#eee;text-align:center;}
			.r_table .r_table_list tr td{border:1px solid #ddd;line-height:35px;text-align:center;}
			.r_table .r_table_list .t_tab thead{border:1px solid #ddd;}
			.r_table .r_table_list .t_tab tbody tr:hover{background:#EAEAEA;}
			.r_table .r_table_list .t_tab tbody tr td .t_action{width:108px;height:24px;margin:0 auto;display:block;}
			.r_table .r_table_list .t_tab tbody tr .t_td{width:120px;}
			.r_table .r_table_list .t_tab tbody tr td .t_action a{width:24px;height:24px;display:block;float:left;margin-right:2px;background:url("${basePath}/resources/images/ht_icon.png") no-repeat;}
			.r_table .r_table_list .t_tab tbody tr td .t_action a:hover{background-color:#2f3437;}
			.r_table .r_table_list .t_tab tbody tr td .t_action .a_see{
				background-position:-359px -45px;background-color:#6297bc;}
			.r_table .r_table_list .t_tab tbody tr td .t_action .a_edit{
				background-position:-379px -47px;background-color:#27a9e3;}
			.r_table .r_table_list .t_tab tbody tr td .t_action .a_save{
				background-position:-398px -47px;background-color:#28b779;}
			.r_table .r_table_list .t_tab tbody tr td .t_action .a_del{
				background-position:-417px -48px;background-color:#ff912f;}
			/*end r_table_list*/

			/* 全选单选样式 start  */
			.checkbox{
			    background: url(${basePath}/resources/images/ico.png) no-repeat 0px -370px;
			    width: 30px;
			    height: 30px;
			    position: absolute;
			    left: 8px;
			    top: 10px;
			    display: block;
			}
			
			.singlebox-checked{
				background-position: 0px -420px;
			}
			
			.checked-all {
			    display: inline-block;
			    width: 34px;
			    height: 30px;
			    cursor: pointer;
			    background: url('${basePath}/resources/images/ico.png') no-repeat 10px -260px;
			    border-right: 1px #d7d9e0 solid;
			    float: left;
			}
			
			.all-checked{
			    background-position: 10px -310px;
			}
			/* end 全选单选样式  */
			
			
		</style>
		<style type="text/css">
			.padination{
				    float: right;
				    padding-top: 0px;
			        margin: 20px 0;
			}
			.pagination ul {
			    display: inline-block;
			    margin-bottom: 0;
			    margin-left: 0;
			    -webkit-border-radius: 4px;
			    -moz-border-radius: 4px;
			    border-radius: 4px;
			    -webkit-box-shadow: 0 1px 2px rgba(0,0,0,0.05);
			    -moz-box-shadow: 0 1px 2px rgba(0,0,0,0.05);
			    box-shadow: 0 1px 2px rgba(0,0,0,0.05);
			}
			.pagination ul>li {
			    display: inline;
			    line-height: 20px;
			    text-align: -webkit-match-parent;
			}
			.pagination ul>li:first-child>a, .pagination ul>li:first-child>span {
			    border-left-width: 1px;
			    -webkit-border-bottom-left-radius: 4px;
			    border-bottom-left-radius: 4px;
			    -webkit-border-top-left-radius: 4px;
			    border-top-left-radius: 4px;
			    -moz-border-radius-bottomleft: 4px;
			    -moz-border-radius-topleft: 4px;
			}
			.pagination ul>li>a, .pager>li>a {
			    color: #2283c5;
			    background-color: #fafafa;
			    margin: 0 -1px 0 0;
			    border-color: #e0e8eb;
			    border-width: 1px;
			    border-radius: 0!important;
			}
			.pagination ul>li>a, .pagination ul>li>span {
			    float: left;
			    padding: 4px 12px;
			    line-height: 20px;
			    text-decoration: none;
			    background-color: #fff;
			    border: 1px solid #ddd;
			    border-left-width: 0;
			    border-right: 2px solid #e0e8eb;
			}
			.padination ul>li>input{
				height:28px;
				line-height:28px;
			}
			select {
				width: 55px;
			    float: left;
			    border-radius: 0;
			    border-width: 1px;
		        background-color: #fff;
  					border: 1px solid #ccc;
			}
			option {
			    padding: 3px 4px;
			}
			
			option {
			    font-weight: normal;
			    display: block;
			    white-space: pre;
			    min-height: 1.2em;
			    padding: 0px 2px 1px;
			}
		</style>
		
	</head>
	<body>
		<!--r_table start-->
		<div class="r_table">
			<div class="r_title">
				<i></i>
				<p>>>个人歌曲管理中心</p>

				<!--r_search start-->
				<div class="r_search">
					<input type="button" value="GO" class="r_btn"/>
					<input type="text" class="r_text" id="q"/>
					<ul id="ul1"></ul>
				</div>
				<!--end r_search-->
				
				<!--function start-->
				<div class="r_search ">
					<div class="t_common">
						<div id="tc_add">
							<a class="tc_add"></a>
							<span>添加</span>
						</div>
					</div>
				</div>
				
				<div class="r_search ">
					<div class="t_common">
						<div id="tc_delete">
							<a class="tc_delete"></a>
							<span>删除</span>
						</div>
					</div>
				</div>
				
				<div class="r_search ">
					<div class="t_common">
						<div id="tc_reload">
							<a class="tc_reload"></a>
							<span>刷新</span>
						</div>
					</div>
				</div>
				<!--end function-->
			</div>
			<!--r_table_list start-->
			<div class="r_table_list">
			<form action="./index" method="post" name="userForm"
						id="userForm">
				<table class="t_tab">
					<thead>
						<tr>
							<th style="width: 20px;"><lable class="checked-all"></lable></th>
							<th>序号</th>
							<th>标题</th>
							<th>分类</th>
							<th>作者</th>
							<th>时间</th>
							<th>点击数/评论数</th>
							<th>是否发布</th>
							<th>是否删除</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody id="tbody">
						<c:forEach var="user" items="${users }">
							<tr class="trdrag" data-categoryid="${user.id}" data-userid="${user.id}" data-opid="${user.id}">
								<td style="position: relative;" width="20px"><lable class="checkbox"></lable></td>
								<td>${user.id}</td>
								<td>${user.username==null?"未知":user.username}</td>
								<td>${user.createTime}</td>
								<td>${user.updateTime}</td>
								<td>${user.updateTime}</td>
								<td>${user.male}/${user.age}</td>
								<td><a href="javascript:void(0);" class="${user.isDelete==1?'dogreen':'dored'}" data-opid="${user.id}" data-mark="forbidden" data-val="${user.isDelete==1?0:1}" onclick="updateBlog(this)">${user.isDelete==1?"是":"否"}</a></td>
								<td id="p_edit">ddd</td>
								<td>
									<div class="t_action">
										<a href="javascript:void(0);" class="a_see" title="查看"></a>
										<a href="javascript:void(0);" class="a_edit" title="编辑" data-id="${user.id}" onclick="detailEdit(this)"></a>
										<a href="javascript:void(0);" class="a_save" title="保存"></a>
										<a href="javascript:void(0);" class="a_del" title="删除"></a>
									</div>								
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</form>
			</div>
			<!--end r_table_list-->
		</div>
		
		<!-- 引入后台分页组件 -->
		<div class="pagination" style="float: right; padding-top: 0px; margin: 20px 18px 20px 0;">${pg.pageStr}</div>
		<!--end r_table-->
		
		<div><a href="${basePath}/admin/add"  id="addDo">＋</a></div>
		<div><a id="goback">←</a></div> 
		<script type="text/javascript">
			//全选单选 start
			function wholeSelect(){
				var arr = [];
				$(".checkbox").each(function(index, checkbox){
					var $checkbox = $(checkbox);
					if($checkbox.hasClass("singlebox-checked")){
						arr.push(checkbox[index]);
					};
				});
				return arr;
			}
			/**
			 * jQuery事件委托
			 * 语法：父级元素 on 事件  子元素 具体回调函数
			 */
			$("tbody").on("click","td",function(){  
	            //alert($(this).html()); 
	            var $tr = $(this).closest("tr");
	            var $checkbox = $tr.find(".checkbox");
	            $checkbox.toggleClass("singlebox-checked");
	            if($checkbox.hasClass("singlebox-checked")){
	            	$tr.css("background","#EAEAEA");
					if(wholeSelect().length == $(".checkbox").length){
						$(".checked-all").addClass("all-checked");
					}
				}else{
					$tr.css("background","#fff");
					$(".checked-all").removeClass("all-checked");
				}
	        }); 
			
			$(".checked-all").click(function(){
				if($(this).hasClass("all-checked")){
					$("tbody").find("tr").css("background","#FFF");
					$(".checkbox").each(function(index, checkbox){
						var $checkbox = $(checkbox);
						$checkbox.removeClass("singlebox-checked");
					});
				}else{
					$("tbody").find("tr").css("background","#EAEAEA");
					$(".checkbox").each(function(index, checkbox){
						var $checkbox = $(checkbox);
						$checkbox.addClass("singlebox-checked");
					});
				}
				$(this).toggleClass("all-checked");
			});
			//end 全选单选
		</script>
		<script type="text/javascript">
			$.topTips({
				content:"文件删除成功！",
				controls : "warn",
				timer:2
			});
			
			$("#tc_add").on("mouseup", function(){
				$.topTips({
					content:"添加成功！",
					controls : "ok",
					timer:2
				});
			});
			
			$("#tc_delete").on("mouseup", function(){
				$.topTips({
					content:"删除失败！",
					controls : "loading",
					timer:2
				});
			});
			//防止事件冒泡
			$(".a_see").click(function(ev){
				loading("防止事件冒泡",2);
				ev.stopPropagation();
				//return false;二者选一
			});
		</script>
  	</body>
</html>
