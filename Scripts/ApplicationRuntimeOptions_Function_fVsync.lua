--------------------------------------------------------------------------------
--  Function......... : fVsync
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fVsync ( bEnable, bHalfFPS )
--------------------------------------------------------------------------------
	
    if (bEnable == true) and (bHalfFPS == true) then
        application.setOption ( application.kOptionSwapInterval, 2 )
        log.message ( "OPTIONS: Vsync 1/2" )
        this._vsyncEnabled ( true )
    elseif (bEnable == true) and (bHalfFPS == false) then
        application.setOption ( application.kOptionSwapInterval, 1 )
        log.message ( "OPTIONS: Vsync 1" )
        this._vsyncEnabled ( true )
    else
        application.setOption ( application.kOptionSwapInterval, 0 )
        log.message ( "OPTIONS: Vsync OFF" )
        this._vsyncEnabled ( false )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
