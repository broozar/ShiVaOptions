--------------------------------------------------------------------------------
--  Function......... : fDynamicShadows
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function ApplicationRuntimeOptions.fDynamicShadows ( nQuality )
--------------------------------------------------------------------------------
	
    -- PCF only works on buffers 1 and 4
    -- PCF without constant sampling looks bad
    -- feel free to adjust the actual quality numbers to your liking
    
    if nQuality == 1 then -- ultra low
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  1) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  256) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  0) --048
    
    elseif nQuality == 2 then -- very low
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  2) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  256) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  0) --048
    
    elseif nQuality == 3 then -- low
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  2) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  512) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  0) --048

    elseif nQuality == 4 then -- barely acceptable
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  2) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  1024) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  0) --048

    elseif nQuality == 5 then -- acceptable
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  4) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  512) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  0) --048

    elseif nQuality == 6 then -- medium
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  4) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  512) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  4) --048

    elseif nQuality == 7 then -- high
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  4) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  1024) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  4) --048

    elseif nQuality == 8 then -- very high
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  4) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  1024) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  8) --048

    elseif nQuality == 9 then -- ultra high
        application.setOption ( application.kOptionDynamicShadowsBufferCount,  4) -- 1234
        application.setOption ( application.kOptionDynamicShadowsBufferSize,  2048) --128..2048
        application.setOption ( application.kOptionDynamicShadowsConstantSampling, 1) --01
        application.setOption ( application.kOptionDynamicShadowsPCFSampleCount,  8) --048
    
    else
        log.warning ( "OPTION: Invalid dynamic shadow value" )
        return
    end
    
    log.message ( "OPTION: Dynamic shadow quality at level "..nQuality )
    
    -- NB: do not use!
    -- application.setOption ( application.kOptionDynamicShadowsQuality, X )
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
