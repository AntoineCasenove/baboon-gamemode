
--[[---------------------------------------------------------

  Level Up Gamemode

  This is first Toinou's gamemode

-----------------------------------------------------------]]

-- These files get sent to the client

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( 'shared.lua' )

--
-- Make BaseClass available
--
DEFINE_BASECLASS( "gamemode_base" )

function GM:PlayerSpawn( pl, transiton )

	player_manager.SetPlayerClass( pl, "player_custom" )

	BaseClass.PlayerSpawn( self, pl, transiton )

end