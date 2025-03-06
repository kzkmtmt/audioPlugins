classdef MATLAB_Gain < audioPlugin 

properties 
    g = 0 % ゲイン [dB]
end

properties(Constant)
    PluginInterface = ...
        audioPluginInterface( ...
            audioPluginParameter(... 
                'g',...                      
                'DisplayName','Gain',...     
                'Mapping',{'lin',-20,20},... 
                'Label','dB'...              
            )...
    );
end

methods
    function y = process(p,x) 
        a = 10^(p.g/20); % g から a を計算
        y = a * x;       % x に a をかけて出力
    end
end
end