--------------------------------------------------------------------------------
--  Handler.......... : onToggleVsync50
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.onToggleVsync50 ( bEnable )
--------------------------------------------------------------------------------
	
    -- vsync at half the monitor refresh rate
    this.fVsync ( bEnable, true )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------