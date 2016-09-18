--------------------------------------------------------------------------------
--  Function......... : fTerrains
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fTerrains ( nQuality )
--------------------------------------------------------------------------------
	
    if nQuality >=0 and nQuality <=4 then
        application.setOption ( application.kOptionTerrainsQuality, nQuality )
        log.message ( "OPTIONS: Terrain at quality level "..nQuality )
    else
        log.warning ( "OPTIONS: Invalid Terrain quality level" )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
