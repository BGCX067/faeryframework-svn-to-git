package com.ixiyou.faeryFramework.core 
{
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.display.Stage;
	import flash.events.Event;
	/**
	 * 基本显示对象
	 * 可以设置自动适应父级宽高
	 * 重写 宽高方法
	 * @author spe blog:http://hi.baidu.com/design9 email:md9yue@qq.com
	 */
	[Event(name = 'auto_resize', type = "flash.events.Event")]
	public class DisplayBase extends Sprite
	{
		//寬
		protected var _width:Number = 0;
		//高度
		protected var _height:Number = 0;
		protected var _autoSize:Boolean=false
		public function DisplayBase(config:*=null) 
		{
			if (config) {
				if(config.x!=null)
					x = config.x;
				if(config.y!=null)
					y = config.y;
				if(config.autoSize!=null)
					autoSize = config.autoSize;
				if (config.width != null)
					width = config.width;
				if (config.height != null)height = config.height;
			}
			addEventListener(Event.ADDED_TO_STAGE, init);
	
		}
		/**
		 * 初始化到场景
		 * @param	e
		 */
		protected function init(e:Event = null):void {
			if (parent) parent.addEventListener(Event.RESIZE, initToParentSize)
			ResetSize()
		}
		/**组件父级发生变化时候，判断是否是这个组件父级，是就对组件大小重设，否需要移除监听*/
		protected function initToParentSize(e:Event):void{
			try{
				var d:DisplayObject=e.target as DisplayObject
				if (parent && d == parent)ResetSize()
				else d.removeEventListener(Event.RESIZE, initToParentSize)
			}catch(e:ArgumentError){
				trace(e.toString()+" 错误：组件父级，事件对象不是显示对象类型")
			}
		}
		/**
		 * 组件大小重设
		 * 一般在组件被新的容器装载、
		 * 组件边界发生变化时候
		 * 执行大小重设由组件自行计算重设的大小
		 * */
		public function ResetSize():void {
			//父级不存在时候
			if (!parent) return
			//自动适应大小时候
			if (autoSize) { 
				//父级是场景
				//trace(parent,parent.width, parent.height)
				if (parent is Stage) {setSize(Stage(parent).stageWidth,Stage(parent).stageHeight)}
				else setSize(parent.width, parent.height)
			}
		}
		/**自动适应宽高*/
		public function set autoSize(value:Boolean):void{
			if (_autoSize == value) return
			_autoSize = value;
			if(_autoSize){
				this.dispatchEvent(new Event('auto_resize'))
				ResetSize()
			}
		}
		public function get autoSize():Boolean { return _autoSize; }
		/**高度*/
		override public function get height():Number{return _height;}
		override public function set height(value:Number):void {
			if (value < 0) return
				setSize(_width,value);
		}
		
		/**宽度*/
		override public function get width():Number { return _width; }
		override public function set width(value:Number):void{
			if (value < 0) return
			setSize(value,_height);
		}
		/**设置大小*/
		public function setSize(w:Number, h:Number):void {
			if (w != _width || h != _height) {
				
				if (w != _width) _width = w;
				if (h != _height)_height = h;
				upSize();
				dispatchEvent(new Event(Event.RESIZE))//大小变化事件
			}
		}
		/**
		 * 大小改变可以执行重绘制
		 */
		public function upSize():void {
			
		}
	}

}