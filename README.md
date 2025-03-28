# MATLAB で Audio Plugin 開発

早稲田大学 MATLAB Student Ambassador

松本和樹（[@km_MATLAB_Amb](https://x.com/km_MATLAB_Amb)）

## はじめに
本シリーズは，MATLAB Student Ambassador の活動の一環として作成した，
MATLAB を用いた Audio Plugin 開発のチュートリアルです．

本リポジトリでは，MATLAB を用いて実装した Audio Plugin の実装を公開しています．
解説は YouTube の動画を確認してください．

プログラムのダウンロードは [こちら](https://github.com/kzkmtmt/audioPlugins/archive/refs/heads/main.zip)．

| #    | 内容                              | 実装                  | 解説（YouTube） | スライド（PDF）                                              | スライド（HTML）                                             |
| ---- | --------------------------------- | --------------------- | --------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1    | ゲイン (＋プラグインの作りの基礎) | `MATLAB_Gain.m`       |                 | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_01_Gain.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_01_Gain.html) |
| 2    | イコライザ                        | `MATLAB_EQ.m`         |                 | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_02_EQ.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_02_EQ.html) |
| 3    | ディストーション                  | `MATLAB_Distortion.m` |                 | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_03_Distortion.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_03_Distortion.html) |

## プログラムの実行に必要なもの

### 1. MATLAB 本体

[MATLAB](https://jp.mathworks.com/products/matlab.html) 本体が必要です．

Campus-wide License を導入している大学に所属している場合，大学のメールアドレスで MathWorks アカウントを作成することで MATLAB をインストールできます（詳細は[こちら](https://jp.mathworks.com/academia/tah-support-program/eligibility.html)）．
詳細は各大学の案内をご確認ください．

💡 MATLAB の基本的な使い方は [MATLAB 入門](https://matlabacademy.mathworks.com/jp/details/matlab-onramp/gettingstarted) で学習できます．ぜひご活用ください．

### 2. 各種 Toolbox

Audio Plugin の生成には [Audio Toolbox](https://jp.mathworks.com/products/audio.html)，[DSP System Toolbox](https://jp.mathworks.com/products/dsp-system.html)，そして [Signal Processing Toolbox](https://jp.mathworks.com/products/signal.html) が必要です
MATLAB インストール時の Toolbox 選択欄でこれらの製品を追加してください．

MATLAB をインストール済みの場合は [ホーム > アドオン](https://jp.mathworks.com/products/matlab/add-on-explorer.html) から追加することも可能です．

### 3. C/C++ コンパイラ

Audio Plugin の生成にはAudio Toolbox をカバーする [C/C++ コンパイラ](https://jp.mathworks.com/support/requirements/supported-compilers.html) のインストールが必要です．

Windowsの場合は [Microsoft Visual C++ 2022](https://visualstudio.microsoft.com/ja/vs/community/) が利用可能です．Visual Studio インストール時に Desktop development with C++ を選択してください（詳細は[こちら](https://jp.mathworks.com/matlabcentral/answers/443349-how-do-i-install-visual-studio-for-use-with-matlab-simulink)）
