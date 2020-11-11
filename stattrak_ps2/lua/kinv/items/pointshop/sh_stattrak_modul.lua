resource.AddFile("materials/mat_jack_job_gradient.vmt")
resource.AddFile("materials/tex_jack_job_gradient.vtf")
resource.AddFile("materials/mat_jack_job_modul.vmt")
resource.AddFile("materials/tex_jack_job_modul.vtf")
ITEM.baseClass	= "base_pointshop_item"
ITEM.PrintName	= "Stattrak Modul"
ITEM.Description = "Z�hle deine Kills mit!"
ITEM.Price = {
	points = 1000000,
}

ITEM.static.validSlots = {
	"Stattrak",
	//"Accessory",
	//"Accessory2",
	//"Extra",
}

ITEM.static.iconInfo = {
	["shop"] = {
		["iconMaterial"] = "mat_jack_job_modul",
		["useMaterialIcon"] = true
	},
	["inv"] = {
		["iconMaterial"] = "mat_jack_job_modul",
		["useMaterialIcon"] = true
	}
}

/*
function ITEM.static.getBaseOutfit( )
	return {},2
end
*/



function ITEM:OnEquip()
	local ply=self.owner

	if SERVER then	ply:SetNWBool('staktrak_enabled', true) end
	ply:ConCommand('cl_tfa_csgo_stattrack 1')
end

function ITEM:OnHolster()
	local ply=self.owner
	//if(CLIENT)then ply.JackaJobStattrakModul=nil end
	ply:ConCommand('cl_tfa_csgo_stattrack 0')
	if SERVER then ply:SetNWBool('staktrak_enabled', false) end
end
