package com.tz.tag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

/**
 * TzIFTag 
 * TzElseTag
 * 创建人:冯小梁 时间：2017年3月22日-上午11:32:37 
 * @version 1.0.0
 *
 */
public class TzElseTag extends TagSupport{
	
	
	@Override
	public int doStartTag() throws JspException {
		TzIFTag parent = (TzIFTag)this.getParent();
		if(parent!=null && !parent.getTest()){
			return EVAL_BODY_INCLUDE;//继续去执行标签提的内容
		}else{
			return SKIP_BODY;
		}
	}
}
