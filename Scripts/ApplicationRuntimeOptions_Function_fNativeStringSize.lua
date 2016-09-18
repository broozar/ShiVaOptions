--------------------------------------------------------------------------------
--  Function......... : fNativeStringSize
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fNativeStringSize ( nMB )
--------------------------------------------------------------------------------
	
    if nMB >= 1 then
        application.setOption ( application.kOptionNativeStringPoolSize, nMB*1000000 )
        log.message ( "OPTIONS: C++ string size limit is now "..nMB.."MB" )
    else
        log.warning ( "OPTIONS: Invalid C++ string size limit" )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
