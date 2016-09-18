--------------------------------------------------------------------------------
--  Function......... : fFullscreen
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fFullscreen ( bEnable, nWidthOverride, nHeightOverride )
--------------------------------------------------------------------------------
	
	if bEnable == true then
        if nWidthOverride < 0 or nHeightOverride < 0 then
            log.warning ( "OPTIONS: Invalid fullscreen resolution" )
            return
        end
        application.setOption ( application.kOptionFullscreenWidth, nWidthOverride )
        application.setOption ( application.kOptionFullscreenHeight, nHeightOverride )
        application.setOption ( application.kOptionFullscreen, 1 )
        log.message ( "OPTIONS: Fullscreen at "..nWidthOverride.."x"..nHeightOverride )
    else
        application.setOption ( application.kOptionFullscreen, 0 )
        log.message ( "OPTIONS: Fullscreen OFF" )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
