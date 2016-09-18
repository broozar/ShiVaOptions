--------------------------------------------------------------------------------
--  Handler.......... : onLoadPreset
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.onLoadPreset ( nPreset )
--------------------------------------------------------------------------------
	
    -- custom handler to define your own presets, like so:
    
    if nPreset == 1 then -- ultra quality preset
        this.fAF ( 16 )
        this.fAudioVolume ( 100 )
        this.fDynamicShadows ( 9 )
        this.fFullscreen ( true, 0, 0 )
        this.fVsync ( true, false )
    
    elseif nPreset == 2 then -- high quality preset
        this.fAF ( 8 )
        this.fAudioVolume ( 100 )
        this.fDynamicShadows ( 8 )
        this.fFullscreen ( true, 0, 0 )
        this.fVsync ( true, false )    
    
    -- [...]
    
    else
        log.warning ( "OPTIONS: Invalid preset value" )
        return
    end
	
    log.message ( "OPTIONS: Running preset "..nPreset )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
