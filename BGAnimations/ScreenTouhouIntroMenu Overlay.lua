return Def.ActorFrame {	
	OnCommand=function(self) SCREENMAN:GetTopScreen():AddInputCallback(THH.Input(self)) end,
	StartCommand=function(self)
		SCREENMAN:GetTopScreen():SetNextScreenName("ScreenTouhouMenu"):StartTransitioningScreen("SM_GoToNextScreen");
	end,
	Def.Sprite {
        Texture=THEME:GetPathG("","2_title.png"),
        OnCommand=function(self)
            self:CenterX():y(SCREEN_CENTER_Y-80)
        end
	},
	Def.Sprite {
        Texture=THEME:GetPathG("","2_copyright.png"),
        OnCommand=function(self)
            self:CenterX():y(SCREEN_BOTTOM-14)
        end,
	}
}
