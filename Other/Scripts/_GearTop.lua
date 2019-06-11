return Def.ActorFrame {
	--Backpart
	LoadActor(THEME:GetPathG("","_Gears/6U_pattern"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y);
	};
	LoadActor(THEME:GetPathG("","_Gears/5U-back_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+272;y,SCREEN_CENTER_Y-32;spin;;effectmagnitude,0,0,7.5);
	};
	LoadActor(THEME:GetPathG("","_Gears/5U-back_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-36;y,SCREEN_CENTER_Y-38;spin;;effectmagnitude,0,0,-30);
	};	
	LoadActor(THEME:GetPathG("","_Gears/4U-mid_S"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-36;y,SCREEN_CENTER_Y-38;spin;;effectmagnitude,0,0,-30);
	};
	LoadActor(THEME:GetPathG("","_Gears/4U-mid_S"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+93;y,SCREEN_CENTER_Y-6;spin;;effectmagnitude,0,0,15);
	};	
	LoadActor(THEME:GetPathG("","_Gears/4U-mid_S"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-103;y,SCREEN_CENTER_Y-12;spin;;effectmagnitude,0,0,30);
	};	
	LoadActor(THEME:GetPathG("","_Gears/4U-mid_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-216;y,SCREEN_CENTER_Y-34;spin;;effectmagnitude,0,0,-15);
	};	
	--Frame
	LoadActor(THEME:GetPathG("","_Gears/3U-frame"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-10);
	};
	LoadActor(THEME:GetPathG("","_Gears/2U-front_L"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-303;y,SCREEN_CENTER_Y-7;spin;;effectmagnitude,0,0,30);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_L"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-216;y,SCREEN_CENTER_Y-34;spin;;effectmagnitude,0,0,-15);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-303;y,SCREEN_CENTER_Y-7;spin;;effectmagnitude,0,0,30);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_S"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-142;y,SCREEN_CENTER_Y-38;spin;;effectmagnitude,0,0,60);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_S"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-116;y,SCREEN_CENTER_Y-48;spin;;effectmagnitude,0,0,-60);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_S"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-112;y,SCREEN_CENTER_Y-22;spin;;effectmagnitude,0,0,60);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X-70;y,SCREEN_CENTER_Y-10;spin;;effectmagnitude,0,0,-30);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+76;y,SCREEN_CENTER_Y-40;spin;;effectmagnitude,0,0,-15);
	};--]]
	LoadActor(THEME:GetPathG("","_Gears/2U-front_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+20;y,SCREEN_CENTER_Y-22;spin;;effectmagnitude,0,0,15);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_L"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+20;y,SCREEN_CENTER_Y-22;spin;;effectmagnitude,0,0,15);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_L"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+164;y,SCREEN_CENTER_Y-20;spin;;effectmagnitude,0,0,7.5);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+164;y,SCREEN_CENTER_Y-20;spin;;effectmagnitude,0,0,7.5);
	};	
	LoadActor(THEME:GetPathG("","_Gears/2U-front_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+284;y,SCREEN_CENTER_Y;spin;;effectmagnitude,0,0,-7.5);
	};
	LoadActor(THEME:GetPathG("","_Gears/2U-front_M"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+258;y,SCREEN_CENTER_Y-54;spin;;effectmagnitude,0,0,7.5);
	};
	LoadActor(THEME:GetPathG("","_Gears/2U-front_L"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+284;y,SCREEN_CENTER_Y;spin;;effectmagnitude,0,0,-7.5);
	};
	--Fade
	LoadActor(THEME:GetPathG("","_Gears/0U-Black_grad"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-9);
	};
};