THH = {}

THH.OpeningMode = 0

THH.Input = function(self)
	return function(event)
		if not event.PlayerNumber then return end
		self.pn = event.PlayerNumber		
		if ToEnumShortString(event.type) == "FirstPress" or ToEnumShortString(event.type) == "Repeat" then
			self:queuecommand(event.GameButton)			
		end
		if ToEnumShortString(event.type) == "Release" then
			self:queuecommand(event.GameButton.."Release")	
		end
	end
end

THH.RunCommandFromChildrenOnChildren = function(self,Command)
	for _,c in pairs(self:GetChildren()) do
		print("FoundChild")
		c:playcommand(Command)
	end
end