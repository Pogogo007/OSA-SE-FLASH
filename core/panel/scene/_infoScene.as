﻿

class core.panel.scene._infoScene extends MovieClip
{
	
public var o
public var m
public var dia
public var actra

var panel
var horizon


			public function _infoScene(){	
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
				type.font = o.fonts.m
				type.size = 11
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = m.dia.module.id+"/"+o.lib.directifySID(m.dia.scena.scene.id)+".xml"
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 14
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.directory
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 32
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.m
				type.size = 11
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = m.dia.scena.scene.id
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 14
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.sceneID
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 40
				
				if(m.dia.scena.scene.info[0].animator){
				
				type = new TextFormat();
				type.letterSpacing = 1.2
				type.font = o.fonts.m
				type.size = 11

				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.animatedByAuthor+" "+m.dia.scena.scene.info[0].animator
				cur.setTextFormat(type);
				cur.autoSize = "right";
				yLoc -= 29
				}
				
			
				var pandect = pandect = o.lib.PLib.get(m.dia.module.id)
				type = new TextFormat();
				type.letterSpacing = 1.2
				type.font = o.fonts.m
				type.size = 22
				if(pandect.sceneglobal[0].majcolor){
				type.color = "0x"+pandect.sceneglobal[0].majcolor
				}
				
				
				
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = m.dia.scena.scene.info[0].name
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				
				
				yLoc -= 20
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.currentScene.toUpperCase()
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				//LAST SCENE
				
				if(m.dia.lastScene){ 
				
				yLoc -= 65
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.m
				type.size = 10
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = m.dia.module.id+"/"+o.lib.directifySID(m.dia.lastScene.id)+".xml"
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 14
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.directory
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 22
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.m
				type.size = 10
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = m.dia.lastScene.id
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 14
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.sceneID
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				yLoc -= 22
				
				if(m.dia.scena.scene.info[0].animator){
				
				type = new TextFormat();
				type.letterSpacing = 1.2
				type.font = o.fonts.l
				type.size = 8

				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.animatedByAuthor+" "+m.dia.lastScene.info[0].animator
				cur.setTextFormat(type);
				cur.autoSize = "right";
				yLoc -= 22
				}
				
			
				var pandect = pandect = o.lib.PLib.get(m.dia.module.id)
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.m
				type.size = 15
				if(pandect.sceneglobal[0].majcolor){
				type.color = "0x"+pandect.sceneglobal[0].majcolor
				}	
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = m.dia.lastScene.info[0].name
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				
				yLoc -= 18
				
				type = new TextFormat();
				type.letterSpacing = 1.1
				type.font = o.fonts.l
				type.size = 9
				
				cur = this.attachMovie("genericText", "nameVaR", this.getNextHighestDepth(), {_x:horizon, _y:yLoc}).val	
				cur.htmlText = o.cfg.lang.lastScene.toUpperCase()
				cur.setTextFormat(type);
				cur.autoSize = "right";
				
				}
				
				OADraw.OLine(this, 0, 0, 0, yLoc-10, "0xFFFFFF", .25)			
			}
					

			
}