package jp.pagnum.SurvivalGame
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.TouchEvent;
	import flash.text.TextField;
	import flash.ui.Multitouch;
	import flash.ui.MultitouchInputMode;
	
	import jp.pagnum.SurvivalGame.TestMonitor;
	
	public class SurvivalGame extends MovieClip
	{
		const DEBUG = 1;
		
		var MonitorLayer:Sprite = new Sprite();
		var UILayer:Sprite = new Sprite();
		var ContentLayer:Sprite = new Sprite();
		
		public function SurvivalGame()
		{
			super();
			
			stage.addChildAt(ContentLayer,0);
			stage.addChildAt(UILayer,1);
			
			//-----------------------------------------------------------------------------
			// テスト用モニター表示
			//
			if(DEBUG === 1) {
				stage.addChildAt(MonitorLayer,2);
				var text_field:TestMonitor = new TestMonitor();
				MonitorLayer.addChild(text_field);
			}
			
			//-----------------------------------------------------------------------------
			// TouchEvent をサポートしている
			//
			if(Multitouch.supportsTouchEvents){
				
				// インプットモードをタッチポイントに設定
				Multitouch.inputMode = MultitouchInputMode.TOUCH_POINT;
				
				stage.addEventListener(TouchEvent.TOUCH_BEGIN,function (e:TouchEvent):void{
					text_field.text = "Touch Start ID:" + e.touchPointID + "\n" + text_field.text;
				});
			
			}
		}
	}
}