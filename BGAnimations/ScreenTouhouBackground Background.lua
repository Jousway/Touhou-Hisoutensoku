local CURLOOP = GetTimeSinceStart()

return Def.ActorFrame {
	Def.Sprite {
		Texture=THEME:GetPathG("","15_back.png"),
		InitCommand=function(self) self:Center():FullScreen() end
	},
	--Mountain 3 Behind Char
	Def.Sprite {
		Texture=THEME:GetPathG("","_Background Items/14_back"),
		InitCommand=function(self) 
			self:CenterX():y(SCREEN_BOTTOM-64):texcoordvelocity(-0.002,0):croptop(0.01) 
		end
	},
	--Walking Char
	Def.ActorFrame {
		InitCommand=function(self) self:queuecommand("MoveBitchGetOutTheWay") end,
		MoveBitchGetOutTheWayCommand=function(self) 
			self:linear(1.5):addy(4):linear(1.5):addy(-4):queuecommand("MoveBitchGetOutTheWay") 
		end,
		Def.Sprite {
			Texture=THEME:GetPathG("","_Background Items/13_back.png"),
			InitCommand=function(self) 
				self:CenterX():y(SCREEN_CENTER_Y+180):x(SCREEN_CENTER_X+146):wag():effectmagnitude(0,0,4):effectperiod(6)
			end
		}
	},
	--Mountain 2 Before Char
	Def.Sprite {
		Texture=THEME:GetPathG("","_Background Items/12_back"),
		InitCommand=function(self) 
			self:CenterX():y(SCREEN_BOTTOM-36):texcoordvelocity(-0.004,0):croptop(0.01) 
		end
	},
	--Mountain 1 Infront Char
	Def.Sprite {
		Texture=THEME:GetPathG("","_Background Items/11_back"),
		InitCommand=function(self)
			self:CenterX():y(SCREEN_BOTTOM-80):texcoordvelocity(-0.006,0):croptop(0.01) 
		end,
	},
	--DAT MUSIC <3
	Def.Sound {
		File=THEME:GetPathS("MainMusic","Start.ogg"),
		OnCommand=function(self) self:queuecommand("Start") end,
        StartCommand=function(self) self:play():queuecommand("Update") end,
		UpdateCommand=function(self) 
			local BGMLOOP = self:get():get_length()
			GETLOOP = GetTimeSinceStart() - CURLOOP
			if GETLOOP > BGMLOOP then self:queuecommand("Loop") else self:sleep(.1):queuecommand("Update") end
		end,
		LoopCommand=function(self) self:load(THEME:GetPathS("MainMusic","(loop).ogg")):play() end
	}
}
