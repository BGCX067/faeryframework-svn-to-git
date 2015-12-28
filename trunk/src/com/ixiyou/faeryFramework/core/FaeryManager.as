package com.ixiyou.faeryFramework.core 
{
	/**
	 * 框架管理者
	 * 网站框架的主要功能API都集中在这里调用或者实现
	 * @author spe
	 */
	public class FaeryManager
	{
		private static var _instance:FaeryManager;
		public function FaeryManager() 
		{
			trace('Faery Framework 1.0 Base')
		}
		/**
		 * 框架管理者的单例
		 */
		public static function get instance():FaeryManager
		{
			if (_instance == null) return _instance = new FaeryManager();
			return _instance;
		}
	}

}