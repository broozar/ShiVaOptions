--------------------------------------------------------------------------------
--  Function......... : fAF
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fAF ( nAF )
--------------------------------------------------------------------------------
	
    if nAF == 0 then
        application.setOption ( application.kOptionTexturesQuality, 0 )
        
    elseif nAF == 2 then
        application.setOption ( application.kOptionTexturesQuality, 1 )
    
    elseif nAF == 4 then
        application.setOption ( application.kOptionTexturesQuality, 2 )
    
    elseif nAF == 8 then
        application.setOption ( application.kOptionTexturesQuality, 3 )
    
    elseif nAF == 16 then
        application.setOption ( application.kOptionTexturesQuality, 4 )
    
    else
        log.warning ( "OPTION: Invalid AF factor" )
        return
    end
    
    log.message ( "OPTION: AF at "..nAF.."x" )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
