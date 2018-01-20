/**
 * CRM系统平台
 * com.tz.bean
 * Permission.java
 * 创建人:冯小梁 
 * 时间：2017年07月26日 14:07:39 
 * 冯小梁-版权所有
 */
package com.tz.bean;

import java.util.Date;

/**
 * Permission 
 * 创建人:冯小梁
 * 时间：2017年07月05日 10:53:22
 * qq：1103206765
 * email：1103206765@qq.com
 * @version 1.0.0
 * 
 */
public class Permission implements java.io.Serializable {

	private Integer id;/* 主键 */
	private String name;//名称
	private String description;//描述
	private Date createTime;// 创建时间
	private Date updateTime;// 创建时间
	private String url;//访问地址
	private String model;//访问模块
	private String method;//访问的方法
	private Integer parentId;//父级ID
	private Integer userId;// 用户ID
	private Integer isDelete;// 0删除1未删除
	
	public Permission(){
		super();
	}
	
	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Integer getParentId() {
		return parentId;
	}

	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Date getUpdateTime() {
		return updateTime;
	}

	public void setUpdateTime(Date updateTime) {
		this.updateTime = updateTime;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getIsDelete() {
		return isDelete;
	}

	public void setIsDelete(Integer isDelete) {
		this.isDelete = isDelete;
	}

}
