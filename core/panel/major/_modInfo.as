﻿

class core.panel.major._modInfo extends MovieClip
{
	
public var o
public var actra
public var pandect
public var module

var panel
var horizon


			public function _modInfo(){	
				horizon = -10
				panel = this
				makeOverlay()			
				
			}
			
			function makeOverlay(){
				
				var cur
				var type
				var yLoc = -11
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 15
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = pandect.slogan
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				
				yLoc -= 32
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.m
				type.size = 13
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = module.id
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 14
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.moduleID
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 32
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.m
				type.size = 13
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = module.v
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 14
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.version
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 40
				
				if(pandect.creator){
				
				type = new TextFormat();
				type.letterSpacing = 1.2
				type.font = o.fonts.m
				type.size = 11

				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.byAuthor+" "+pandect.creator
				cur.setTextFormat(type);
				cur.autoSize = "right";
				yLoc -= 23
				}
				
				
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.size = 14
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = pandect.subtitle
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				
				yLoc -= 40
				
				
				type = new TextFormat();
				type.letterSpacing = 1.3
				if(pandect.fonts[0].majcolor){type.color = "0x"+pandect.fonts[0].majcolor}
				type.font = o.fonts.m
				if(pandect.fonts[0].jumbo==2){
					type.size = 50
					yLoc -= 20
				}
				else if(pandect.fonts[0].jumbo==1){
				type.size = 40
				
					yLoc -= 10
				}
				else{type.size = 30
				
				}
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = module.name
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				
				OADraw.OLine(this, 0, 0, 0, yLoc+20, "0xFFFFFF", .25)			
			}
					

			
			
}