--------------------------------------------------------------------------------
--  Function......... : fAA
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fAA ( sFilterName )
--------------------------------------------------------------------------------
	
	if sFilterName == "MSAA" then
        application.setOption ( application.kOptionUseAntialiasingFilter, 0 )
        log.message ( "OPTIONS: now using MSAA" )

	elseif sFilterName == "FXAA" then
        application.setOption ( application.kOptionUseAntialiasingFilter, 1 )
        log.message ( "OPTIONS: now using FXAA" )
        
    else
        log.warning ( "OPTIONS: AA filter not recognized" )
        return
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
