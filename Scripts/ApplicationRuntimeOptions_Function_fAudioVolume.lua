--------------------------------------------------------------------------------
--  Function......... : fAudioVolume
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fAudioVolume ( nVol )
--------------------------------------------------------------------------------
	
    if nVol >= 0 and nVol <= 100 then
        application.setOption ( application.kOptionAudioMasterVolume, nVol );
        log.message ( "OPTIONS: Audio Master Volume changed to "..nVol )
    else
        log.warning ( "OPTIONS: Audio Master Volume not changed: invalid value "..nVol )
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
