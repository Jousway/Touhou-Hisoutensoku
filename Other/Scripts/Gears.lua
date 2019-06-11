local Type = ...

local Gear = function(self,x,y,SpinMag,File)
	return Def.Sprite{
		Texture=THEME:GetPathG("",File),
		OnCommand=function(self) self:xy(x,y):spin():effectmagnitude(0,0,SpinMag) end
	}
end

if Type == "Bottom" then
	return Def.ActorFrame{
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/6L_pattern"),
			OnCommand=function(self) self:Center() end,
		},
		Gear(self,SCREEN_CENTER_X+96,SCREEN_CENTER_Y+59,-15,"_Gears/5U-back_M"),
		Gear(self,SCREEN_CENTER_X-65,SCREEN_CENTER_Y+162,7.5,"_Gears/5L-back_L"),
		Gear(self,SCREEN_CENTER_X-158,SCREEN_CENTER_Y+120,-7.5,"_Gears/4L-mid_L"),
		Gear(self,SCREEN_CENTER_X+251,SCREEN_CENTER_Y+51,15,"_Gears/5U-back_M"),
		Gear(self,SCREEN_CENTER_X+280,SCREEN_CENTER_Y-4,-48,"_Gears/4U-mid_S"),
		Gear(self,SCREEN_CENTER_X+180,SCREEN_CENTER_Y+52,24,"_Gears/4U-mid_M"),
		Gear(self,SCREEN_CENTER_X-306,SCREEN_CENTER_Y,30,"_Gears/4U-mid_S"),
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/3L-frame"),
			OnCommand=function(self) self:CenterX():y(SCREEN_CENTER_Y-2) end,
		},
		Gear(self,SCREEN_CENTER_X+180,SCREEN_CENTER_Y+52,24,"_Gears/2U-front_L"),
		Gear(self,SCREEN_CENTER_X-106,SCREEN_CENTER_Y+30,24,"_Gears/2U-front_L"),
		Gear(self,SCREEN_CENTER_X-294,SCREEN_CENTER_Y+42,24,"_Gears/2U-front_L"),
		Gear(self,SCREEN_CENTER_X-222,SCREEN_CENTER_Y+14,-96,"_Gears/2U-front_S"),
		Gear(self,SCREEN_CENTER_X-196,SCREEN_CENTER_Y+26,96,"_Gears/2U-front_S"),
		Gear(self,SCREEN_CENTER_X-42,SCREEN_CENTER_Y+12,-96,"_Gears/2U-front_S"),
		Gear(self,SCREEN_CENTER_X-2,SCREEN_CENTER_Y+6,48,"_Gears/2U-front_M"),
		Gear(self,SCREEN_CENTER_X+74,SCREEN_CENTER_Y+20,48,"_Gears/2U-front_M"),
		Def.ActorFrame{
			OnCommand=function(self) self:queuecommand("Rotation") end,
			RotationCommand=function(self) 
				self:decelerate(3.75):x(44)
					:accelerate(3.75):x(0)
					:decelerate(3.75):x(-44)
					:accelerate(3.75):x(0)
					:queuecommand("Rotation")	
			end,
			Def.ActorFrame{
				OnCommand=function(self) self:queuecommand("Rotation") end,
				RotationCommand=function(self) 
					self:accelerate(3.75):y(44)
						:decelerate(3.75):y(88)
						:accelerate(3.75):y(44)
						:decelerate(3.75):y(0)
						:queuecommand("Rotation")
						
				end,
				Def.Sprite{
					Texture=THEME:GetPathG("","_Gears/1L-rod_S"),
					OnCommand=function(self) self:xy(SCREEN_CENTER_X-200,SCREEN_CENTER_Y-6) end,
				},
				Def.Sprite{
					Texture=THEME:GetPathG("","_Gears/1L-rod_L"),
					OnCommand=function(self) self:xy(SCREEN_CENTER_X+36,SCREEN_CENTER_Y-2) end,
				}
			}
		},
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/0L-Black_grad"),
			OnCommand=function(self) self:CenterX():y(SCREEN_CENTER_Y+8) end,
		}
	}
elseif Type == "Top" then
	return Def.ActorFrame{
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/6U_pattern"),
			OnCommand=function(self) self:Center() end,
		},
		Gear(self,SCREEN_CENTER_X+272,SCREEN_CENTER_Y-32,7.5,"_Gears/5U-back_M"),
		Gear(self,SCREEN_CENTER_X-36,SCREEN_CENTER_Y-38,-30,"_Gears/5U-back_M"),
		Gear(self,SCREEN_CENTER_X-36,SCREEN_CENTER_Y-38,-30,"_Gears/4U-mid_S"),
		Gear(self,SCREEN_CENTER_X+93,SCREEN_CENTER_Y-6,15,"_Gears/4U-mid_S"),
		Gear(self,SCREEN_CENTER_X-103,SCREEN_CENTER_Y-12,30,"_Gears/4U-mid_S"),
		Gear(self,SCREEN_CENTER_X-216,SCREEN_CENTER_Y-14,-15,"_Gears/4U-mid_M"),
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/3U-frame"),
			OnCommand=function(self) self:CenterX():y(SCREEN_CENTER_Y-10) end,
		},
		Gear(self,SCREEN_CENTER_X-303,SCREEN_CENTER_Y-7,30,"_Gears/2U-front_L"),
		Gear(self,SCREEN_CENTER_X-216,SCREEN_CENTER_Y-34,-15,"_Gears/2U-front_L"),
		Gear(self,SCREEN_CENTER_X-303,SCREEN_CENTER_Y-7,30,"_Gears/2U-front_M"),
		Gear(self,SCREEN_CENTER_X-142,SCREEN_CENTER_Y-38,60,"_Gears/2U-front_S"),
		Gear(self,SCREEN_CENTER_X-116,SCREEN_CENTER_Y-48,-60,"_Gears/2U-front_S"),
		Gear(self,SCREEN_CENTER_X-112,SCREEN_CENTER_Y-22,60,"_Gears/2U-front_S"),
		Gear(self,SCREEN_CENTER_X-70,SCREEN_CENTER_Y-10,-30,"_Gears/2U-front_M"),
		Gear(self,SCREEN_CENTER_X+76,SCREEN_CENTER_Y-40,-15,"_Gears/2U-front_M"),
		Gear(self,SCREEN_CENTER_X+20,SCREEN_CENTER_Y-22,15,"_Gears/2U-front_M"),
		Gear(self,SCREEN_CENTER_X+20,SCREEN_CENTER_Y-22,15,"_Gears/2U-front_L"),
		Gear(self,SCREEN_CENTER_X+164,SCREEN_CENTER_Y-20,7.5,"_Gears/2U-front_L"),
		Gear(self,SCREEN_CENTER_X+284,SCREEN_CENTER_Y,-7.5,"_Gears/2U-front_M"),
		Gear(self,SCREEN_CENTER_X+258,SCREEN_CENTER_Y-54,7.5,"_Gears/2U-front_M"),
		Gear(self,SCREEN_CENTER_X+284,SCREEN_CENTER_Y,-7.5,"_Gears/2U-front_L"),
		Def.Sprite{
			Texture=THEME:GetPathG("","_Gears/0U-Black_grad"),
			OnCommand=function(self) self:CenterX():y(SCREEN_CENTER_Y-9) end,
		}		
	}
end