package com.ixiyou.faeryFramework.api 
{
	
	/**
	 * 资源接口
	 * @author spe
	 */
	public interface IAsset 
	{
		/**
		 * 文件加载的 bytes字节数
		 */
		function getBytesLoaded():int;
		/**
		 * 文件加载的 bytes字节 总数
		 */
		function getBytesTotal():int;
		/**
		 * 文件加载的百分比 getBytesLoaded/getBytesTotal
		 */
		function get percentLoaded():Number;
		/**
		 * 资源ID
		 */
		function get id():String;
		/**
		 * 资源的路径
		 */
		function get src():String;
		function set src(value:String):void;
		/**
		 * 资源预加载，比如资源被调用过但被摧毁时候是否保留预加载的bytes
		 */
		function get preloadAsset():Boolean;
		function set preloadAsset(value:Boolean):void;
		/**
		 * 资源加载的等级
		 */
		function get order():int;
		/**
		 * 资源加载相关的XML
		 */
		function get node():XML;
	}
	
}