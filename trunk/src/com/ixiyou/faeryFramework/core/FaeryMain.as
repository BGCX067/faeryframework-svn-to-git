package com.ixiyou.faeryFramework.core 
{
	import flash.display.Sprite;
	import flash.events.Event
	/**
	 * 网站框架首要swf文件的文档类的夫类
	 * 
	 * ┌──sagte───────────────────────────┐
	 * │ ┌─root(Mian继承FaeryMain)──────┐ │
	 * │ │┌─root.view(SiteView)────────┐│ │
	 * │ ││                            ││ │
	 * │ ││  content                   ││ │
	 * │ ││                            ││ │
	 * │ │└────────────────────────────┘│ │
	 * │ └──────────────────────────────┘ │
	 * └──────────────────────────────────┘
	 * @author spe blog:http://hi.baidu.com/design9 email:md9yue@qq.com
	 */
	public class FaeryMain extends DisplayBase
	{
		protected var model:SiteModel;
		protected var controller:SiteController;
		protected var view:SiteView;
		protected static var _instance:FaeryMain;
		public function FaeryMain() 
		{
			autoSize=true
			super()
			_instance = this;
			addEventListener(Event.ADDED_TO_STAGE, addedToStage);
		}
		/**
		 * 第一次添加到场景上
		 * @param	e
		 */
		private function addedToStage(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, addedToStage);
			if (stage.stageWidth == 0 || stage.stageHeight == 0) addEventListener(Event.ENTER_FRAME, waitForStageSize);
			else startFaery();
		}
		/**
		 * 等待场景舞台大小初始化
		 * @param	e
		 */
		private function waitForStageSize(e:Event):void 
		{
			if (stage.stageWidth > 0 && stage.stageHeight > 0)
			{
				removeEventListener(Event.ENTER_FRAME, waitForStageSize);
				startFaery();
			}
		}
		/**
		 * 程序开始执行(框架开始构建)
		 */
		public function startFaery():void
		{
			
		}
		
	}

}