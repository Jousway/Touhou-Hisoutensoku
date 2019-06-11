return Def.ActorFrame {
	OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(THH.Input(self)) end,
	StartCommand=function(self)
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenTouhouMenu"):StartTransitioningScreen("SM_GoToNextScreen");
	end,
	Def.Quad {
        OnCommand=function(self)
            self:Center():FullScreen():diffuse(0,0,0,1):sleep(7):linear(1):diffuse(0,0,0,0) 
        end
	},
	Def.Sprite {
        Texture=THEME:GetPathG("","_Intro/01_123th.png"),
        OnCommand=function(self)
            self:Center():diffusealpha(0):zoom(0.7):linear(1.333):diffusealpha(1):zoom(0.8):linear(1.333):diffusealpha(1):zoom(0.9):linear(1.333):diffusealpha(0):zoom(1)
        end
	},
	Def.Sprite {
        Texture=THEME:GetPathG("","_Intro/02_cerclename.png"),
		OnCommand=function(self)
            self:Center():diffusealpha(0):sleep(4):zoom(0.85):linear(1.333):diffusealpha(1):zoom(0.9):linear(1.333):diffusealpha(1):zoom(0.95):linear(1.333):diffusealpha(0):zoom(1)
        end
	},
	Def.Sprite {
        Texture=THEME:GetPathG("","2_title.png"),
        OnCommand=function(self)
            self:CenterX():y(SCREEN_CENTER_Y-80):diffusealpha(0):sleep(9):linear(0.5):diffusealpha(1)
        end
	},
	Def.Sprite {
        Texture=THEME:GetPathG("","_Intro/1_titlel.png"),
        OnCommand=function(self)
            self:CenterX():y(SCREEN_CENTER_Y-80):diffusealpha(0):sleep(8.5):linear(0.5):diffusealpha(1):linear(2):diffusealpha(0):queuecommand("Transfer")
        end,
        TransferCommand=function(self) 
            SCREENMAN:GetTopScreen():SetNextScreenName("ScreenTouhouIntroMenu"):StartTransitioningScreen("SM_GoToNextScreen");
        end
	},
	Def.Sprite {
        Texture=THEME:GetPathG("","2_copyright.png"),
        OnCommand=function(self)
            self:CenterX():y(SCREEN_BOTTOM-14):diffusealpha(0):sleep(10):linear(0.5):diffusealpha(1)
        end
	}
}
