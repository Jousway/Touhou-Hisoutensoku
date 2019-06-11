return Def.Sprite {
    Texture=THEME:GetPathG("","_Intro/0000.png"),
    InitCommand=function(self)
        self:Center():FullScreen():diffusealpha(0):linear(1):diffusealpha(1):sleep(3):linear(1):diffusealpha(0):queuecommand("Transfer")
    end,
    TransferCommand=function(self) 
        SCREENMAN:GetTopScreen():SetNextScreenName("ScreenTouhouIntro"):StartTransitioningScreen("SM_GoToNextScreen")
    end
}