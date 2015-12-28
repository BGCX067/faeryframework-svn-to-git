package com.ixiyou.faeryFramework.api 
{
	
	/**
	 * 页面模型
	 * @author spe blog:http://hi.baidu.com/design9 email:md9yue@qq.com
	 */
	public interface IPageModel 
	{
		/**
		 * 页面ID
		 */
		function get id():String;
		/**
		 * 页面标题
		 */
		function get title():String;
		function set title(value:String):void;
		/**
		 * 页面
		 */
		function get page():IPage
		/**
		 * 父级模型
		 */
		function get parent():IPageModel
		function set parent(value:IPageModel)
		/**
		 * 页面的内部资源
		 */
		function get assets():IPageAsset
		/**
		 * 默认加载的子对象, 默认XML节点里的第一个page
		 */
		function get defaultChild():String;
		function set defaultChild(value:String):void;
		/**
		 * 页码路径
		 */
		function get branch():String;
		/**
		 * 子对象数
		 */
		function get numChildren():uint;
		/**
		 * 根据子对象ID获取model
		 */
		function get getChildByID(value:String):IPageModel
		/**
		 * 子对象数组
		 */
		function get childrenArr():Array
		/**
		 * 是否外部页面
		 */
		function get external():Boolean
		/**
		 * 页面路径
		 */
		function get branch():String;
		/**
		 * 对于不是加载SWF作为内部分页时候，打开窗口方式
		 */
		function get window():String;
		function set window(value:String):void;
		/**
		 * 开始运动进来
		 */
		function transitionIn():void
		/**
		 * 开始运动出去
		 */
		function transitionOut():void
		/**
		 * 开始运动进来 结束后做操作
		 */
		function transitionInComplete():void
		/**
		 * 开始运动出去 结束后做操作 
		 */
		function transitionOutComplete():void
		
	}
	
}