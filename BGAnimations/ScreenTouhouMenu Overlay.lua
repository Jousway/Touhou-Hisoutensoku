local Transfer = function(Screen)
	SCREENMAN:GetTopScreen():SetNextScreenName(Screen):StartTransitioningScreen("SM_GoToNextScreen")
end

return Def.ActorFrame{
	OnCommand=function(self)
		if THH.OpeningMode == 1 then
			SOUND:PlayOnce(THEME:GetPathS("","040.wav"),true)
			self:GetChild("LeftDoor"):x(0):accelerate(.5):x(-640)
			self:GetChild("RightDoor"):x(0):accelerate(.5):x(640)
			self:GetChild("BottomGears"):xy(-((SCREEN_WIDTH-640)/1.5),-SCREEN_CENTER_Y+SCREEN_BOTTOM-32):zoomx(SCREEN_WIDTH/640):accelerate(.5):y(-SCREEN_CENTER_Y+SCREEN_BOTTOM+480)
			self:GetChild("TopGears"):xy(-((SCREEN_WIDTH-640)/1.5),-SCREEN_CENTER_Y+48):zoomx(SCREEN_WIDTH/640):accelerate(.5):y(-SCREEN_CENTER_Y-480)
			THH.OpeningMode = 0
		else
			SOUND:PlayOnce(THEME:GetPathS("","061.wav"),true)
		end
	end,
	Def.Sprite{
        Texture=THEME:GetPathG("","2_title.png"),
        OnCommand=function(self)
            self:y(SCREEN_CENTER_Y-80):CenterX():decelerate(.5):x(SCREEN_CENTER_X+80)
        end
	},
	Def.Sprite{
        Texture=THEME:GetPathG("","2_copyright.png"),
        OnCommand=function(self)
            self:y(SCREEN_BOTTOM-14):CenterX():decelerate(.5):x(SCREEN_CENTER_X+80)
        end
	},
	Def.Sprite{
		Texture=THEME:GetPathG("","2_menu_black.png"),
		OnCommand=function(self) self:zoomtoheight(SCREEN_HEIGHT):CenterY():halign(0):x(-self:GetWidth()):decelerate(.5):x(0) end
	},

	loadfile(THEME:GetPathO("","Scripts/Scroller.lua"))({
	{"Story Mode",function(self,pos)
		self:GetParent():GetChild("Fade"):decelerate(.5):diffusealpha(1)
		self:sleep(.5):queuecommand("Transfer")
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenOptionsService")
	end},
	{"Arcade Mode",function(self,pos) end},
	{"VS Com",function(self,pos) end},
	{"VS Player",function(self,pos) end},
	{"VS Network",function(self,pos) end},
	{"Practice",function(self,pos) end},
	{"Replay",function(self,pos) end},
	{"Musicroom",function(self,pos) end},
	{"Result",function(self,pos) end},
	{"Profile",function(self,pos) end},
	{"Config",function(self,pos)
		SOUND:PlayOnce(THEME:GetPathS("","061.wav"),true)
		self:GetParent():GetChild("LeftDoor"):decelerate(.5):x(0)
		self:GetParent():GetChild("RightDoor"):decelerate(.5):x(0)
		self:GetParent():GetChild("BottomGears"):decelerate(.5):y(-SCREEN_CENTER_Y+SCREEN_BOTTOM-32)
		self:GetParent():GetChild("TopGears"):decelerate(.5):y(-SCREEN_CENTER_Y+48)
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenOptionsService")
		THH.OpeningMode = 1
		self:sleep(.5):queuecommand("Transfer")
	end},
	{"Exit",function(self,pos) Transfer("ScreenExit") end},
	})..{
		OnCommand=function(self) self:xy(-200,60):decelerate(.5):x(0) end,
		TransferCommand=function(self,params) SCREENMAN:GetTopScreen():StartTransitioningScreen("SM_GoToNextScreen") end
	},

	Def.Quad{
		Name="Fade",
		OnCommand=function(self) self:Center():zoomto(SCREEN_WIDTH,SCREEN_HEIGHT):diffuse(0,0,0,0)  end
	},

	Def.ActorFrame{
		Name="LeftDoor",
		InitCommand=function(self) self:x(-640) end,
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/door_l.png"),
			OnCommand=function(self) self:CenterY():diffuse(.5,.5,.5,1):x(SCREEN_CENTER_X-520):zoomx(-1) end
		},
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/door_l.png"),
			OnCommand=function(self) self:CenterY():diffuse(.5,.5,.5,1):x(SCREEN_CENTER_X-80) end
		}
	},
	Def.ActorFrame{
		Name="RightDoor",
		InitCommand=function(self) self:x(640) end,
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/door_r.png"),
			OnCommand=function(self) self:CenterY():diffuse(.5,.5,.5,1):x(SCREEN_CENTER_X+520):zoomx(-1) end
		},
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/door_r.png"),
			OnCommand=function(self) self:CenterY():diffuse(.5,.5,.5,1):x(SCREEN_CENTER_X+80) end
		}
	},
	loadfile(THEME:GetPathO("","Scripts/Gears.lua"))("Bottom")..{
		Name="BottomGears",
		OnCommand=function(self)
			self:xy(-((SCREEN_WIDTH-640)/1.5),-SCREEN_CENTER_Y+SCREEN_BOTTOM+480):zoomx(SCREEN_WIDTH/640)
		end
	},
	loadfile(THEME:GetPathO("","Scripts/Gears.lua"))("Top")..{
		Name="TopGears",
		OnCommand=function(self)
			self:xy(-((SCREEN_WIDTH-640)/1.5),-SCREEN_CENTER_Y-480):zoomx(SCREEN_WIDTH/640)
		end
	}
}
