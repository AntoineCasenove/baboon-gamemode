DEFINE_BASECLASS( "player_default" )

 local PLAYER = {}

 --
 -- See gamemodes/base/player_class/player_default.lua for all overridable variables
 --
 PLAYER.WalkSpeed = 600
 PLAYER.RunSpeed  = 1000
 PLAYER.JumpPower = 800
 PLAYER.StartArmor = 200
 PLAYER.DropWeaponOnDie = true

 function PLAYER:Loadout()

 	self.Player:RemoveAllAmmo()

 	self.Player:GiveAmmo( 256,	"357", true )
 	self.Player:GiveAmmo( 256,	"Buckshot", true )
 	self.Player:Give( "weapon_357" )
 	self.Player:Give( "weapon_shotgun" )

 end

 player_manager.RegisterClass( "player_custom", PLAYER, "player_default" )