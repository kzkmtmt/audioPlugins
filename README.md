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
* MATLAB 2024b：
* Toolbox（Signal Processing Toolbox, DSP System Toolbox, Audio Toolbox）
  * MATLAB をインストール済みの場合：[ホーム > アドオン](https://jp.mathworks.com/products/matlab/add-on-explorer.html) から追加できる
* [C/C++ コンパイラ](https://jp.mathworks.com/support/req操作画面rements/supported-compilers.html)（Audio Toolbox をカバーするもの）
  * Windowsの場合：[Microsoft Visual C++ 2022](https://jp.mathworks.com/matlabcentral/fileexchange/52848-matlab-support-for-mingw-w64-c-c-fortran-compiler) など
    * インストール時に [Desktop development with C++](https://jp.mathworks.com/matlabcentral/answers/443349-how-do-i-install-visual-studio-for-use-with-matlab-simulink) を選択してください
