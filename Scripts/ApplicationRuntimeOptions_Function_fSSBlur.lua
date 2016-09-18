--------------------------------------------------------------------------------
--  Function......... : fSSBlur
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fSSBlur ( bEnable, nPasses )
--------------------------------------------------------------------------------
	
    if bEnable == true then
        if nPasses <=1 and nPasses >4 then
            log.warning ( "OPTIONS: Invalid SSblur passes" )
            return
        end
        
        application.setOption ( application.kOptionDynamicShadowsScreenSpaceBlurPassCount, nPasses )
        application.setOption ( application.kOptionDynamicShadowsScreenSpaceBlur, 1 )
        log.message ( "OPTIONS: SSblur enabled" )
        
    else 
        log.message ( "OPTIONS: SSblur disabled" )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
