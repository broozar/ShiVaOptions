--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.onInit (  )
--------------------------------------------------------------------------------
	
    local hU = this.getUser ( )
    
    -- check for vsync
	local vsync = application.getOption ( application.kOptionSwapInterval )
    if vsync > 0 then this._vsyncEnabled ( true ) end
    
    -- always enable positional audio
    application.setOption ( application.kOptionAudioSpatializationEnabled, 1 )
    
    -- auto enable accelerometer if mobile device is detected
    local os = system.getOSType ( )
    if os == system.kOSTypeIPhone 
    or os == system.kOSTypeAndroid
    or os == system.kOSTypeBlackBerry
    or os == system.kOSTypeWinRT
    or os == system.kOSTypePalm
    or os == system.kOSTypePSVita
    or os == system.kOSTypeWii
    then input.enableJoypadMotionSensors ( hU, 0, true )
    end
    
    -- auto enable batching
    application.setOption ( application.kOptionUseAutomaticRuntimeBatching, 1 )
    
    -- auto enable all shaders
    application.setOption ( application.kOptionShadersQuality, 2 )
    
    --[[ black screenshot fix for iOS - only works in 2.0!
    if os == system.kOSTypeIPhone then
        application.setOption ( application.kOptionOffscreenRenderingRetainedBacking, 1 )
    end
    ]]
    
    -- disable screen space blur by default for compatibility reasons (enable manually if needed)
    application.setOption ( application.kOptionDynamicShadowsScreenSpaceBlur, 0 )
    
    
    -- you can try to load a preset if you want to, like so:
    -- user.sendEventImmediate ( hU, "ApplicationRuntimeOptions", "onLoadPreset", 2 )
    
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
