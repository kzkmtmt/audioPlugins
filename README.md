# MATLAB で Audio Plugin 開発

早稲田大学 MATLAB Student Ambassador

松本和樹（[@km_MATLAB_Amb](https://x.com/km_MATLAB_Amb)）

## はじめに
本シリーズは，MATLAB Student Ambassador の活動の一環として作成した，
MATLAB を用いた Audio Plugin 開発のチュートリアルです．

本リポジトリでは，MATLAB を用いて実装した Audio Plugin の実装を公開しています．
解説は YouTube の動画を確認してください．
* ゲイン
* イコライザ
* ディストーション

## 内容
* 実装した Plugin は `MATLAB_○○.mat` というファイル名でリポジトリ直下に配置しています．
* YouTube の動画内で紹介しているサンプルプログラムは `note` フォルダに配置しています．
* スライドは `docs` フォルダに配置しています．

## プログラムの実行に必要なもの

### 1. MATLAB 本体

Campus-wide License を導入している大学に所属している場合，大学のメールアドレスで MathWorks アカウントを作成することで MATLAB をインストールできます（詳細は[こちら](https://jp.mathworks.com/academia/tah-support-program/eligibility.html)）．
詳細は各大学の案内をご確認ください．

### 2. MATLAB Toolbox

Audio Plugin の生成には Signal Processing Toolbox, DSP System Toolbox, Audio Toolbox が必要です．
MATLAB インストール時の Toolbox 選択欄でこれらの製品を追加してください．
MATLAB をインストール済みの場合は [ホーム > アドオン](https://jp.mathworks.com/products/matlab/add-on-explorer.html) から追加することも可能です．

### 3. C/C++ コンパイラ

Audio Plugin の生成にはAudio Toolbox をカバーする [C/C++ コンパイラ](https://jp.mathworks.com/support/requirements/supported-compilers.html) のインストールが必要です．

Windowsの場合は [Microsoft Visual C++ 2022](https://visualstudio.microsoft.com/ja/vs/community/) が利用可能です．Visual Studio インストール時に Desktop development with C++ を選択してください（詳細は[こちら](https://jp.mathworks.com/matlabcentral/answers/443349-how-do-i-install-visual-studio-for-use-with-matlab-simulink)）
