package com.ixiyou.faeryFramework.api 
{
	
	/**
	 * 页面接口
	 * @author spe blog:http://hi.baidu.com/design9 email:md9yue@qq.com
	 */
	public interface IPage 
	{	
		/**
		 * 这个页面相关的模型
		 */
		function get page():IPageModel
		/**
		 * 这个页面关联的资源库
		 */
		function get assets():IPageAsset
	}
}