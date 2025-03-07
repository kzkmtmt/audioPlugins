classdef MATLAB_EQ < audioPlugin

    properties
        fs                % サンプリング周波数
        fc   = 2000       % カットオフ周波数
        Q    = 1/sqrt(2)  % レゾナンス
        z    = zeros(2,2) % フィルタの遅延器の状態（2次 x 2ch）
        type = 'LowPass'; % フィルタの種類
    end

    properties(Constant)
        PluginInterface = ...
            audioPluginInterface( ...
            audioPluginParameter(...
            'type',...　　　　　　　　　　　　     % プロパティ名 type
            'DisplayName','Type',...　　　　　　  % Type
            'Mapping', {'enum','LowPass', ...
                               'HighPass', ...
                               'BandPass'} ...   % フィルタの種類
            ),...
            audioPluginParameter(...
            'fc',...                             % プロパティ名 fc
            'DisplayName','Cutoff Frequency',... % 画面に表示する名前
            'Mapping',{'log',10,20000},...       % 対数的に -20 から, 20 まで
            'Label','Hz'...                      % 単位はHz
            ),...
            audioPluginParameter(...
            'Q',...                              % プロパティ名 Q
            'DisplayName','Resonance',...        % 画面に表示する名前
            'Mapping',{'log',0.025,20}...        % 対数的に 0.025 から, 40 まで
            )...
            );
    end

    methods
        function y = process(p,x)
            p.fs  = getSampleRate(p); % サンプリング周波数の取得
            switch p.type % フィルタ係数の計算
                case 'LowPass'
                    [b,a] = calcLPFCoeffs(p.fc,p.fs,p.Q);
                case 'HighPass'
                    [b,a] = calcHPFCoeffs(p.fc,p.fs,p.Q);
                otherwise
                    [b,a] = calcBPFCoeffs(p.fc,p.fs,p.Q);
            end
            [y,p.z] = filter(b,a,x,p.z);  % フィルタの適用
        end
    end
end