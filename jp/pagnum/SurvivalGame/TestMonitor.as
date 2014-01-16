package jp.pagnum.SurvivalGame
{
	import flash.text.TextField;
	
	public class TestMonitor extends TextField
	{
		public function TestMonitor()
		{
			super();
			
			this.x = 10;
			this.y = 10;
			this.width = 460;
			this.height = 460;
			this.border = true;
			this.borderColor = 0xFFFFFF;
			this.selectable = false;
			this.textColor = 0xFFFFFF;
			this.text = "TestMonitor";
		}
	}
}