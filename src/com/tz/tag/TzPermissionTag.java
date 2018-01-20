package com.tz.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;

import com.tz.bean.Permission;
import com.tz.util.TzConstant;

/**
 * 权限标签，基于model和method
 * TzPermissionTag
 * 创建人:冯小梁 
 * 时间：2017年8月10日-上午8:59:08 
 * @version 1.0.0
 *
 */
public class TzPermissionTag extends BodyTagSupport {
	private static final long serialVersionUID = 1L;
	private String method;
	private String model;
	private List<Permission> permissionsList =null;

	/*
	 * 	tz:属于标签命名空间
	 *  permission:标签的名称
	 * 	属性和属性值
	 * 	<tz:permission method="xxxx" model="xxx">标签的开始doStartTag
	 * 		xxxx //标签体--doAfterBody
	 *	</tz:permission>标签结束 doEndTag
	 * */
	
	@SuppressWarnings("unchecked")
	@Override
	public void doInitBody() throws JspException {
		permissionsList = (List<Permission>)this.pageContext.getSession().getAttribute(TzConstant.PERMISSION_SESSION_USERKEY);
	}

	@Override
	public int doAfterBody() throws JspException {
		String bodyContent = this.getBodyContent().getString();
		if(bodyContent!=null){
			try {
				JspWriter out = this.getPreviousOut();
				if(isPersmission()){
					out.print(bodyContent);
				}else{
					out.print("");
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return SKIP_BODY;//跳出标签体处理继续往下执行
	}
	
	private boolean isPersmission(){
		try {
			if((permissionsList==null) || (permissionsList!=null && permissionsList.size()==0))return false;
			boolean flag = false;
			for (Permission permission : permissionsList) {
				String cmodel = String.valueOf(permission.getModel());// /index
				String cmethod = String.valueOf(permission.getMethod());// /index
				if(cmodel.equals(model) && cmethod.equals(method)){
					flag= true;
					break;
				}
			}
			return flag;
		} catch (Exception e) {
			return false;
		}
	}
	

	//setter方法进行值的注入
	public void setMethod(String method) {
		this.method = method;
	}


	public void setModel(String model) {
		this.model = model;
	}

}
