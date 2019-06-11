return Def.ActorFrame {
	OnCommand=function(self) self:xy(SCREEN_CENTER_X,SCREEN_CENTER_Y) end,
	Def.Sprite{
		OnCommand=function(self) self:zoom(1.5):y(-40) end,
		Texture="Weather_"..math.random(1,9)
	},
	Def.Sprite{
		OnCommand=function(self) self:zoomto(640,480) end,
		Texture="BG_"..math.random(1,4)
	}
}