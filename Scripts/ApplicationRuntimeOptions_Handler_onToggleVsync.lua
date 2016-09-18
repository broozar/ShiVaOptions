--------------------------------------------------------------------------------
--  Handler.......... : onToggleVsync
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.onToggleVsync ( bEnable )
--------------------------------------------------------------------------------
	
    -- vsync at full monitor refresh rate
    this.fVsync ( bEnable, false )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------