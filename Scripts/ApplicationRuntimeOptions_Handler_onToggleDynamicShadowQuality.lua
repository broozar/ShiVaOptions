--------------------------------------------------------------------------------
--  Handler.......... : onToggleDynamicShadowQuality
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.onToggleDynamicShadowQuality ( nQuality )
--------------------------------------------------------------------------------
	
    -- quality between 1 (low) and 9 (high)
    this.fDynamicShadows ( nQuality )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------