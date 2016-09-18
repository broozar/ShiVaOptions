--------------------------------------------------------------------------------
--  Function......... : fFPSlimit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fFPSlimit ( nFPS )
--------------------------------------------------------------------------------
	
    local vsync = this._vsyncEnabled ( )
    
    if vsync == true then
        log.warning ( "OPTIONS: Cannot limit FPS while VSYNC is active" )
    elseif nFPS <= 1 then
        log.warning ( "OPTIONS: Invalid FPS value" )
    else
        application.setMinFrameTime ( 1 / nFPS )
        log.message ( "OPTIONS: FPS limited to "..nFPS )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
