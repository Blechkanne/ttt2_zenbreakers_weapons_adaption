if SERVER then
	AddCSLuaFile()
end

SWEP.Base					= "weapon_zen_base"
SWEP.SubClass				= "ar" -- ar or smg or mp or lmg
SWEP.AvailableSubclasses = {
							["smg"] = true,
							["mp"] = true,
							["lmg"] = true
							}
SWEP.SubClassName		= {
							["default"] = "Assault Rifle",
							["smg"] = "Submachine Gun",
							["mp"] = "Machine Pistol",
							["lmg"] = "Light Machine Gun"
							}

-- These can be copied to every weapon, as they are weapon specific
if CLIENT then
	SWEP.PrintName			= "M16"
	SWEP.Slot				= 2

	SWEP.ViewModelFlip		= false
	SWEP.ViewModelFOV		= 64

	SWEP.Icon				= "vgui/ttt/icon_m16"
	SWEP.IconLetter			= "w"
end

SWEP.Kind 					= WEAPON_HEAVY
SWEP.WeaponID				= AMMO_M16

SWEP.Primary.Sound 			= Sound("Weapon_M4A1.Single")
SWEP.Secondary.Sound		= nil

SWEP.ViewModel				= Model("models/weapons/cstrike/c_rif_m4a1.mdl")
SWEP.WorldModel				= Model("models/weapons/w_rif_m4a1.mdl")


-- Standard Set for Assault Rifle "ar"
	SWEP.HoldType 				= "ar2"

	SWEP.Primary.Automatic 		= true

	SWEP.Primary.Damage 		= 15
	SWEP.Primary.Delay 			= 0.1
	SWEP.Primary.Recoil 		= 2.0
	SWEP.Primary.NumShots 		= 1
	SWEP.Primary.Cone 			= 0.02
	SWEP.SightsAccuracyBoost	= 0.4		-- Sights Accuracy Boost has to be between 1 and 0, defining the percentual boost while aiming down sights -> 0.1 = 10% plus accuracy

	SWEP.HeadshotMultiplier 	= 1.5
	SWEP.CloseUpKillDistance	= 100		-- Depending on the CloseUpKillDistance you can oneshot everybody with a headshot in this distance
	SWEP.FallOfDistance			= 200

	SWEP.Primary.ClipSize 		= 40
	SWEP.Primary.DefaultClip	= 40
	SWEP.Primary.ClipMax 		= 120

	SWEP.Primary.Ammo 			= "Pistol"
	SWEP.AmmoEnt				= "item_ammo_pistol_ttt" -- There is no AssaultRifle Ammo

	SWEP.RNGDamage				= 0.333		-- Maximum Damage Pct Gain
	SWEP.RNGDelay				= -0.2		-- Maximum Delay Pct Loss (Negative Delay is a slowdown for good weapons)
	SWEP.RNGRecoil				= -0.5		-- Maximum Recoil Pct Loss (Negative for Recoil Gain)
	SWEP.RNGNumShots			= 0			-- Maximum NumberOfShots Pct Gain
	SWEP.RNGCone				= 0.5		-- Maximum Cone Pct Loss
	SWEP.RNGSightsAccuracyBoost	= 0.25		-- Maximum SightsAccuracy Pct Gain

	SWEP.RNGHeadshotMultiplier	= 0.25		-- Maximum HeadshotMultiplier Pct Gain
--

	SWEP.Zen						= {}
	SWEP.Zen["smg"] 				= {}
	SWEP.Zen["mp"] 					= {}
	SWEP.Zen["lmg"] 				= {}

-- Replace Set for Submachine Gun "smg"
	SWEP.Zen["smg"].HoldType			= "smg"

	SWEP.Zen["smg"].Automatic			= true

	SWEP.Zen["smg"].Damage 				= 13
	SWEP.Zen["smg"].Delay 				= 0.08
	SWEP.Zen["smg"].Recoil 				= 0.8
	SWEP.Zen["smg"].NumShots			= 1
	SWEP.Zen["smg"].Cone 				= 0.03
	SWEP.Zen["smg"].SightsAccuracyBoost	= 0.4		-- Sights Accuracy Boost has to be between 1 and 0, defining the percentual boost while aiming down sights -> 0.1 = 10% plus accuracy

	SWEP.Zen["smg"].HeadshotMultiplier	= 1.5
	SWEP.Zen["smg"].CloseUpKillDistance	= 100		-- Depending on the CloseUpKillDistance you can oneshot everybody with a headshot in this distance
	SWEP.Zen["smg"].FallOfDistance		= 200

	SWEP.Zen["smg"].ClipSize 			= 50
	SWEP.Zen["smg"].DefaultClip			= 50
	SWEP.Zen["smg"].ClipMax 			= 100

	SWEP.Zen["smg"].Ammo 				= "smg1"
	SWEP.Zen["smg"].AmmoEnt				= "item_ammo_smg1_ttt"

	SWEP.Zen["smg"].RNGDamage					= 0.16		-- Maximum Damage Pct Gain
	SWEP.Zen["smg"].RNGDelay					= 0.125		-- Maximum Delay Pct Loss
	SWEP.Zen["smg"].RNGRecoil					= -0.25		-- Maximum Recoil Pct Loss (Negative for Recoil Gain)
	SWEP.Zen["smg"].RNGNumShots					= 0			-- Maximum NumberOfShots Pct Gain
	SWEP.Zen["smg"].RNGCone						= 0.333		-- Maximum Cone Pct Loss
	SWEP.Zen["smg"].RNGSightsAccuracyBoost		= 0.25		-- Maximum SightsAccuracy Pct Gain

	SWEP.Zen["smg"].RNGHeadshotMultiplier		= 0.166		-- Maximum HeadshotMultiplier Pct Gain
--

-- Replace Set for Machine Pistol "mp"
	SWEP.Zen["mp"].HoldType				= "ar2" -- not smg?

	SWEP.Zen["mp"].Automatic			= true

	SWEP.Zen["mp"].Damage 				= 11
	SWEP.Zen["mp"].Delay 				= 0.065
	SWEP.Zen["mp"].Recoil 				= 0.8
	SWEP.Zen["mp"].NumShots				= 1
	SWEP.Zen["mp"].Cone 				= 0.04
	SWEP.Zen["mp"].SightsAccuracyBoost	= 0.4		-- Sights Accuracy Boost has to be between 1 and 0, defining the percentual boost while aiming down sights -> 0.1 = 10% plus accuracy

	SWEP.Zen["mp"].HeadshotMultiplier	= 1.5
	SWEP.Zen["mp"].CloseUpKillDistance	= 100		-- Depending on the CloseUpKillDistance you can oneshot everybody with a headshot in this distance
	SWEP.Zen["mp"].FallOfDistance		= 200

	SWEP.Zen["mp"].ClipSize 			= 25
	SWEP.Zen["mp"].DefaultClip			= 25
	SWEP.Zen["mp"].ClipMax 				= 75

	SWEP.Zen["mp"].Ammo 				= "smg1"
	SWEP.Zen["mp"].AmmoEnt				= "item_ammo_smg1_ttt"

	SWEP.Zen["mp"].RNGDamage				= 0.182		-- Maximum Damage Pct Gain
	SWEP.Zen["mp"].RNGDelay					= 0.23		-- Maximum Delay Pct Loss
	SWEP.Zen["mp"].RNGRecoil				= -0.5		-- Maximum Recoil Pct Loss (Negative for Recoil Gain)
	SWEP.Zen["mp"].RNGNumShots				= 0			-- Maximum NumberOfShots Pct Gain
	SWEP.Zen["mp"].RNGCone					= 0.25		-- Maximum Cone Pct Loss
	SWEP.Zen["mp"].RNGSightsAccuracyBoost	= 0.25		-- Maximum SightsAccuracy Pct Gain

	SWEP.Zen["mp"].RNGHeadshotMultiplier	= 0.166		-- Maximum HeadshotMultiplier Pct Gain
--

-- Replace Set for Light Machine Gun "lmg"
	SWEP.Zen["lmg"].HoldType			= "crossbow"

	SWEP.Zen["lmg"].Automatic			= true

	SWEP.Zen["lmg"].Damage 				= 16
	SWEP.Zen["lmg"].Delay 				= 0.07
	SWEP.Zen["lmg"].Recoil 				= 2.5
	SWEP.Zen["lmg"].NumShots			= 1
	SWEP.Zen["lmg"].Cone 				= 0.065
	SWEP.Zen["lmg"].SightsAccuracyBoost	= 0.6		-- Sights Accuracy Boost has to be between 1 and 0, defining the percentual boost while aiming down sights -> 0.1 = 10% plus accuracy

	SWEP.Zen["lmg"].HeadshotMultiplier	= 1.2
	SWEP.Zen["lmg"].CloseUpKillDistance	= 50		-- Depending on the CloseUpKillDistance you can oneshot everybody with a headshot in this distance
	SWEP.Zen["lmg"].FallOfDistance		= 150

	SWEP.Zen["lmg"].ClipSize 			= 150
	SWEP.Zen["lmg"].DefaultClip			= 150
	SWEP.Zen["lmg"].ClipMax 			= 150

	SWEP.Zen["lmg"].Ammo 				= nil
	SWEP.Zen["lmg"].AmmoEnt				= nil		-- These guns don't get refill Ammo

	SWEP.Zen["lmg"].RNGDamage				= 0.25		-- Maximum Damage Pct Gain
	SWEP.Zen["lmg"].RNGDelay				= -0.28		-- Maximum Delay Pct Loss (Negative Delay is a slowdown for good weapons)
	SWEP.Zen["lmg"].RNGRecoil				= -0.2		-- Maximum Recoil Pct Loss (Negative for Recoil Gain)
	SWEP.Zen["lmg"].RNGNumShots				= 0			-- Maximum NumberOfShots Pct Gain
	SWEP.Zen["lmg"].RNGCone					= 0.15		-- Maximum Cone Pct Loss
	SWEP.Zen["lmg"].RNGSightsAccuracyBoost	= 0.25		-- Maximum SightsAccuracy Pct Gain

	SWEP.Zen["lmg"].RNGHeadshotMultiplier	= 0.25		-- Maximum HeadshotMultiplier Pct Gain
--

SWEP.Secondary.Delay 		= 0.1

SWEP.DeploySpeed 			= 1.4

SWEP.IronSightsPos 			= Vector(-7.58, -9.2, 0.55)
SWEP.IronSightsAng 			= Vector(2.599, -1.3, -3.6)
SWEP.ZoomFOV				= 0
SWEP.DrawIronSightsScope	= false

SWEP.AutoSpawnable 			= false
SWEP.Spawnable             	= false
SWEP.UseHands 				= true
