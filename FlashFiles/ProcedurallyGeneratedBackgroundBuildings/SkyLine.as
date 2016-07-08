﻿package 
{
	import flash.events.*;
	import fl.motion.*;
	
	{
		public var stageH:Number = 700; //stage height
		
		public var colour:uint = Math.random()*0xFFFFFF;
		
		{
			sky(stageW,stageH)
			
		public function sky(w:uint, h:uint) 
		{
			// Set up the required elements of a gradient
			var colours = [ colour, 0 ]; // Random colour to Black
			var alphas = [ 1, 1 ]; // Fully opaque
			var ratios = [ 0, 255 ]; // Left edge to right edge
			var matrix:Matrix = new Matrix(); // Make a Matrix for the gradient
			// Tell the Matrix to make a gradient box the full size of the sky
			matrix.createGradientBox(w, h, -Math.PI/2);
			// Draw the background
			graphics.beginGradientFill(GradientType.LINEAR, colours, alphas, ratios, matrix);
			graphics.drawRect(0,0,w,h);
			graphics.endFill();

		}
		