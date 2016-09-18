--------------------------------------------------------------------------------
--  Function......... : fOffscreen
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fOffscreen ( bEnable, nScaleFactor, nAA )
--------------------------------------------------------------------------------
	
    -- we need to turn off offscreen rendering, even if we just want to change the resolution
    application.setOption ( application.kOptionUseOffscreenRendering, 0 )
    log.message ( "OPTIONS: Offscreen rendering OFF" )
    
    if bEnable == true then

        if nScaleFactor <=0 then
            log.warning ( "OPTIONS: Invalid offscreen rendering scaling" )
            return
        end

        if nAA ~=0 or nAA ~=2 or nAA ~=4 then
            log.warning ( "OPTIONS: Invalid offscreen AA factor" )
            return
        end
    
        application.setOption ( application.kOptionOffscreenRenderingBlitToScreen, 0 )

        -- a scaling factor of 0.5 would effectively half the resolution - good for performance
        local w = application.getCurrentUserViewportWidth  ( ) * nScaleFactor
        local h = application.getCurrentUserViewportHeight ( ) * nScaleFactor

        -- set new OR screen resoulution        
        application.setOption ( application.kOptionOffscreenRenderingBufferWidth,   w )
        application.setOption ( application.kOptionOffscreenRenderingBufferHeight,  h )
        log.message ( "OPTIONS: Offscreen rendering at "..w.."x"..h )
        
        -- set offscreen AA -> only works in 2.0!
        -- application.setOption ( application.kOptionOffscreenRenderingAntialiasingSampleCount, nAA )
        
        -- re-enable OR
        application.setOption ( application.kOptionUseOffscreenRendering,           1 )
        application.setOption ( application.kOptionOffscreenRenderingBlitToScreen,  1 )
        log.message ( "OPTIONS: Offscreen rendering ON" )
        
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
