# MATLAB で Audio Plugin 開発

松本和樹（早稲田大学，MATLAB Student Ambassador，[@km_MATLAB_Amb](https://x.com/km_MATLAB_Amb)）

## ダウンロード
* [最新版](https://github.com/kzkmtmt/audioPlugins/archive/refs/heads/main.zip) 

## 内容
本シリーズは，MATLAB Student Ambassador の活動の一環として作成した，
MATLAB を用いた Audio Plugin 開発のチュートリアルです．

本リポジトリでは，MATLAB を用いて実装した Audio Plugin の実装を公開しています．
解説は YouTube の動画を確認してください．


| #    | 内容                              | 実装                  | 解説動画（YouTube） | スライド（PDF）                                              | スライド（HTML）                                             |
| ---- | --------------------------------- | --------------------- | --------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1    | ゲイン (＋プラグインの作りの基礎) | `MATLAB_Gain.m`       |                 | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_01_Gain.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_01_Gain.html) |
| 2    | イコライザ                        | `MATLAB_EQ.m`         |                 | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_02_EQ.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_02_EQ.html) |
| 3    | ディストーション                  | `MATLAB_Distortion.m` |                 | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_03_Distortion.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_03_Distortion.html) |

## 前提とする知識

MATLAB の基本的な使い方．

> 学習にはブラウザ上で MATLAB を学習できる [MATLAB 入門](https://matlabacademy.mathworks.com/jp/details/matlab-onramp/gettingstarted) をご活用ください．

## プログラムの実行に必要なもの

### 1. MATLAB 本体

[MATLAB](https://jp.mathworks.com/products/matlab.html) 本体が必要です．動画内では R2024b を使用しています．

> Campus-Wide License を導入している大学では，<br>大学のメールアドレスで MathWorks アカウントを作成することで MATLAB を入手できます．<br>
> 詳細は[こちら](https://jp.mathworks.com/academia/tah-support-program/eligibility.html)，または各大学の案内をご確認ください．

### 2. 各種 MATLAB Toolbox

以下の三つの Toolbox が必要です．
* Audio Toolbox
* DSP System Toolbox
* Signal Processing Toolbox

> MATLAB インストール時の Toolbox 選択欄でこれらの製品を追加するか，<br> [ホーム > アドオン](https://jp.mathworks.com/products/matlab/add-on-explorer.html) から Add-On Explorer を開き，Audio Toolbox を検索してインストールしてください．

### 3. C/C++ コンパイラ

Audio Toolbox をカバーする C/C++ コンパイラのインストールが必要です．

Windows をお使いの場合，[Microsoft Visual C++ 2022](https://visualstudio.microsoft.com/ja/vs/community/) を利用できます．

> Visual Studio インストール時に C++ によるデスクトップ開発ワークロードを選択してください（詳細は[こちら](https://jp.mathworks.com/matlabcentral/answers/443349-how-do-i-install-visual-studio-for-use-with-matlab-simulink)）

Windows 以外をお使いの場合は [対応するコンパイラの一覧表](https://jp.mathworks.com/support/requirements/supported-compilers.html) を確認し，ご自身の環境で利用できるコンパイラをインストールしてください．
