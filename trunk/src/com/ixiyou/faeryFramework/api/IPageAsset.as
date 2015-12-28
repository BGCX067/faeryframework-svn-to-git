package com.ixiyou.faeryFramework.api 
{
	
	/**
	 * 页面的内部资源集
	 * 页面内嵌数据 
	 * 对内嵌资源队列加载 格式分析 是否跳转页面卸载释放 是否文件2进制保存考虑深拷贝使用
	 * @author spe blog:http://hi.baidu.com/design9 email:md9yue@qq.com
	 */
	public interface IPageAsset 
	{
		/**
		 * 资源列表数组
		 */
		function get assetArray():Array;
		/**
		 * 资源对象数
		 */
		function get numAsset():uint;
		/**
		 * 根据ID获取资源
		 */
		function get getAssetByID(value:String):IAsset
	}
	
}