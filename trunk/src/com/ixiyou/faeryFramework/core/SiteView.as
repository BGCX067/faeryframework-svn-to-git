package com.ixiyou.faeryFramework.core 
{
	/**
	 * 网站显示区
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
	public class SiteView extends DisplayBase
	{
		
		public function SiteView() 
		{
			this.autoSize=true
			super()
		}
		/**
		 * 
		 */
		override public function upSize():void {
		}
	}

}