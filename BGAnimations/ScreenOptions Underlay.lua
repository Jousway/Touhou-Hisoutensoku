print("SCREEN_WIDTH: "..SCREEN_WIDTH)

return Def.ActorFrame{
	Def.ActorFrame{
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
		OnCommand=function(self)
			self:xy(-((SCREEN_WIDTH-640)/1.5),-SCREEN_CENTER_Y+SCREEN_BOTTOM-32):zoomx(SCREEN_WIDTH/640)
		end
	},
	loadfile(THEME:GetPathO("","Scripts/Gears.lua"))("Top")..{
		OnCommand=function(self)
			self:xy(-((SCREEN_WIDTH-640)/1.5),-SCREEN_CENTER_Y+48):zoomx(SCREEN_WIDTH/640)
		end
	}
}