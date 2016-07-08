﻿package 
	import fl.motion.*;
		public var textsColor:uint = 0xffffff;
		public var textsOutlineColor:uint = Math.random()*0xffffff;
		public var textBackgroundColor:uint = Math.random()*0xffffff;
		
		public var inputField:TextField = new TextField();
		public var myTextFormat:TextFormat = new TextFormat  ;
		
		public var getText:String;
	
			stage.addEventListener(KeyboardEvent.KEY_DOWN,kDown);
			
			
				addChild(inputField);
				
				inputField.type = "input";
				inputField.width = 500;
				inputField.height = 40;
				inputField.x = 50;
				inputField.y = 100;
				inputField.textColor = textsColor;
				inputField.border = true;
				inputField.borderColor = textsOutlineColor;
				inputField.background = true;    
				inputField.backgroundColor = textBackgroundColor; 
				inputField.selectable = true;
				inputField.maxChars = 24;
				inputField.restrict = "A-Z a-z";
				inputField.multiline = false;
				stage.focus = inputField;
				
				inputField.setTextFormat(myTextFormat);
				myTextFormat.italic = true; 
				myTextFormat.size = 20;
				myTextFormat.font = "Comic Sans MS";
				myTextFormat.align = TextFormatAlign.CENTER;
				
				trace(inputField.length)
				getText = inputField.text;   
			
			
		private function labelText(str:String, x:int, y:int):void
        {
            var tf:TextField = new TextField();
            tf.text = str; tf.x = x; tf.y = y; tf.autoSize = "left";
            tf.setTextFormat(new TextFormat("verdana", 10));
            addChild(tf);
        }
		
		public function kDown(event:KeyboardEvent):void
		{
			if(event.keyCode == 32)
			{
				
			}
			
		}
		{
			if(event.target == muButton)
			{
				resultText.text = String(getText)
			}
		}
		