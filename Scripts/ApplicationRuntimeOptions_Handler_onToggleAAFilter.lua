--------------------------------------------------------------------------------
--  Handler.......... : onToggleAAFilter
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.onToggleAAFilter ( sFilterName )
--------------------------------------------------------------------------------
	
    -- use either "MSAA" or "FXAA"
	this.fAA ( sFilterName )
    -- the actual AA level has to be set in the CFG file though!
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
