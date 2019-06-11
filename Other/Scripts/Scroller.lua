local Content = ...
local MenuChoices = Def.ActorFrame{
	Name="TextCon"
}

for i,v in ipairs(Content) do
	MenuChoices[#MenuChoices+1] = Def.ActorFrame{
		Name="TextPos"..i,
		OnCommand=function(self) self:y(16+(24*i)):x(110):zoom(.7) end,
		Def.BitmapText{
			Font="_peignot Bold 20px",
			Text=v[1],
			OnCommand=function(self) self:halign(1):strokecolor(0,0,0,1) end
		},
		Def.BitmapText{
			Font="_peignot Glow 20px",
			Text=v[1],
			Name="GlowText"..i,
			InitCommand=function(self) self:diffuse(0,1,0,0):halign(1) end
		}
	}
end

local CurPos = 1

local Selector = function(self,Amount)
	self:GetChild("TextCon"):GetChild("TextPos"..CurPos):GetChild("GlowText"..CurPos):diffusealpha(0)
	CurPos = CurPos + Amount
	if CurPos > #MenuChoices then CurPos = 1 end
	if CurPos < 1 then CurPos = #MenuChoices end
	self:GetChild("TextCon"):GetChild("TextPos"..CurPos):GetChild("GlowText"..CurPos):diffusealpha(1)
	self:GetChild("GearPos"):stoptweening():decelerate(.2):y(-24+(24*CurPos)):GetChild("Gear"):stoptweening():decelerate(.2):rotationz(-24+(24*CurPos))
end

return Def.ActorFrame{ 
	OnCommand=function(self) 
		SCREENMAN:GetTopScreen():AddInputCallback(THH.Input(self)) 
		self:GetChild("TextCon"):GetChild("TextPos1"):GetChild("GlowText1"):diffusealpha(1)
	end,
	StartCommand=function(self) Content[CurPos][2](self,CurPos) end,
	MenuUpCommand=function(self)
		SOUND:PlayOnce(THEME:GetPathS("","059.wav"),true)
		Selector(self,-1)
	end,
	MenuDownCommand=function(self)
		SOUND:PlayOnce(THEME:GetPathS("","059.wav"),true)
		Selector(self,1)
	end,
	Def.ActorFrame{
		Name="GearPos",
		OnCommand=function(self) self:y(SCREEN_BOTTOM):sleep(.5):decelerate(.5):y(0) end,
		Def.Sprite{
			Name="Gear",
			Texture=THEME:GetPathG("_Title","Scroller/2_menu_gear.png"),
			OnCommand=function(self) self:diffuse(.5,.5,.5,1):rotationz(360):sleep(.5):decelerate(.5):rotationz(0) end
		},
		Def.Sprite{
			Texture=THEME:GetPathG("_Title","Scroller/2_menu_hari.png"),
			OnCommand=function(self) self:xy(31,17) end
		}
	},
	MenuChoices
}