classdef MATLAB_Distortion < audioPlugin

    properties
        pregain = 0;
        bias    = 0;
        interpolator;  % アップサンプリング用のオブジェクト
        decimator;     % ダウンサンプリング用のオブジェクト
    end

    properties (Constant)
        M = 8; % オーバーサンプリングの時数
    end

    properties (Constant)
        PluginInterface = audioPluginInterface(...
            audioPluginParameter('pregain',...
            'DisplayName','PreGain',...
            'Mapping',{'lin',0,30}), ...
            audioPluginParameter('bias',...
            'DisplayName','Bias',...
            'Mapping',{'lin',-1,1}) ...
            );
    end

    methods
        % コンストラクタ（プラグイン起動時に実行される）
        function p = MATLAB_Distortion()
            % アップサンプリング / ダウンサンプリング用オブジェクトの初期化
            p.interpolator = dsp.FIRInterpolator(p.M);
            p.decimator    = dsp.FIRDecimator(   p.M);
        end

        % 処理
        function y = process(p,x)
            a   = db2mag(p.pregain);       % 単位変換
            b   = p.bias;
            xos = p.interpolator(x);       % アップサンプリング
            yos = hardclip(a * (xos + b)); % ディストーション
            y   = p.decimator(yos);        % ダウンサンプリング
        end
    end
end

function y = hardclip(x)
y = max(min(x,1),-1);
end