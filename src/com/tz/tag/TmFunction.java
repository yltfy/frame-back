package com.tz.tag;

import java.text.SimpleDateFormat;
import java.util.Date;

import sun.net.www.content.audio.x_aiff;

/**
 * 自定义函数标签
 * TmFunction
 * 创建人:冯小梁 时间：2017年3月22日-上午11:31:43 
 * @version 1.0.0
 *
 */
public class TmFunction {

	
	/**
	 * 日期格式化方法
	 * 方法名：dateFormat
	 * 创建人：冯小梁 
	 * 时间：2017年3月22日-上午11:31:56 
	 * 手机:18850149410
	 * @param date
	 * @param pattern
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String dateFormat(Date date,String pattern){
		return new SimpleDateFormat(pattern).format(date);
	}

	
	/**
	 * 方法名：getChar
	 * 创建人：冯小梁 
	 * 时间：2017年3月22日-上午11:32:10 
	 * 手机:18850149410
	 * @param index
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String getChar(int index){
		char c =(char)(64+index);
		return String.valueOf(c);
	}
	
	
	/**
	 * 方法名：subString
	 * 创建人：冯小梁 
	 * 时间：2017年3月22日-上午11:32:21 
	 * 手机:18850149410
	 * @param content
	 * @param start
	 * @param end
	 * @return String
	 * @exception 
	 * @since  1.0.0
	 */
	public static String subString(String content,int start,int end){
		return content.substring(start, end);
	}
	
	public static void main(String[] args) {
//		System.out.println(getChar(1));
	}
	
	
}
