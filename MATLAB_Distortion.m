classdef MATLAB_Distortion < audioPlugin

    properties
        pregain = 0;
        bias    = 0;
        interpolator;  % アップサンプリング用のオブジェクト
        decimator;     % ダウンサンプリング用のオブジェクト
    end

    properties (Constant)
        M = 8; % オーバーサンプリングの次数
    end

    properties (Constant)
        PluginInterface = audioPluginInterface(...
            audioPluginParameter('pregain',...
            'DisplayName','PreGain',...
            'Mapping',{'lin',0,30}), ...
            audioPluginParameter('bias',...
            'DisplayName','Bias',...
            'Mapping',{'lin',-2,2}) ...
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
            % 解説動画内の実装
            % a   = db2mag(p.pregain);
            % b   = p.bias;
            % x2  = p.interpolator(x);
            % y2  = hardclip(a*(x2 + b));
            % y   = p.decimator(y2);

            % 改良版
            a   = db2mag(p.pregain);
            b   = p.bias;
            x2  = p.interpolator(x);
            y2  = hardclip(a * x2 + b); % 式を変更
            y   = p.decimator(y2);
            y   = y - hardclip(b); % 直流成分の除去
        end
    end
end

function y = hardclip(x)
y = max(min(x,1),-1);
end