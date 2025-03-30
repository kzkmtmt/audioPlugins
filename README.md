# MATLAB で Audio Plugin 開発

早稲田大学 MATLAB Student Ambassador，松本和樹

[![MATLAB](https://img.shields.io/badge/MATLAB-0076A8?style=flat&logo=MATLAB&logoColor=white)](https://x.com/km_MATLAB_Amb)[![X](https://img.shields.io/badge/X-000000?style=flat&logo=X&logoColor=white)](https://x.com/km_MATLAB_Amb) [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat&logo=YouTube&logoColor=white)](https://www.youtube.com/@km_MATLAB_Amb) 
[![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?style=flat&logo=github&logoColor=white)](https://github.com/kzkmtmt)

## ダウンロード

[プログラム（最新版）](https://github.com/kzkmtmt/audioPlugins/archive/refs/heads/main.zip)

## 内容
本シリーズは MATLAB Student Ambassador の活動の一環として作成した Audio Plugin 開発のチュートリアルです．MATLAB の Audio Toolbox の機能を用い，音楽制作ソフトウェア上で動作する VST Plugin を生成します．

本リポジトリでは，MATLAB を用いて実装した Audio Plugin の実装を公開しています．
解説は YouTube を参照してください．

| #    | 内容                              | 実装 <br> [![MATLAB](https://img.shields.io/badge/MATLAB-0076A8?style=flat&logo=MATLAB&logoColor=white)]() | 解説 <br> [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat&logo=YouTube&logoColor=white)](https://www.youtube.com/@km_MATLAB_Amb) | スライド（PDF）                                              | スライド（HTML）                                             |
| ---- | --------------------------------- | --------------------- | --------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1    | ゲイン (＋プラグインの作りの基礎) | `MATLAB_Gain.m`       | [YouTube](https://youtu.be/6pWxrbXzk8g) | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_01_Gain.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_01_Gain.html) |
| 2    | イコライザ                        | `MATLAB_EQ.m`         | [YouTube](https://youtu.be/D5gkb9DIL-c) | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_02_EQ.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_02_EQ.html) |
| 3    | ディストーション                  | `MATLAB_Distortion.m` | [YouTube](https://youtu.be/pDanvVW20As)| [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_03_Distortion.pdf) | [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_03_Distortion.html) |


<div class="wrap">
  <iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLizcxDp986ijlLXTzzFe6EETEAwIIjpWZ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</div>

> [!NOTE]
> Audio Plugin 作成の前に，MATLAB の基本的な使い方を習得することをお勧めします．学習にはブラウザ上で MATLAB を学習できる [MATLAB 入門](https://matlabacademy.mathworks.com/jp/details/matlab-onramp/gettingstarted) をご活用ください．


## 実行手順
[プログラム（最新版）](https://github.com/kzkmtmt/audioPlugins/archive/refs/heads/main.zip) をダウンロード & 展開し，プログラムの入っているフォルダを MATLAB の「現在のフォルダ」として開いてください．以下のような画面になっていれば OK です．

  ![image](https://github.com/user-attachments/assets/d34658c9-c091-4f0a-9bde-e306cd454a1e)

> [!WARNING]
> `note` ディレクトリは削除し，すべてのコードをリポジトリ直下に配置しました．`MATLAB_Distortion.m` は改良版をアップロードしています．解説動画内の実装とは挙動が異なりますのでご注意ください．

## プログラムの実行に必要なもの
  
### 1. MATLAB

MATLAB を入手してください．

> [!NOTE]
> Campus-Wide License を導入している大学では，**大学のメールアドレスで MathWorks アカウントを作成**することで MATLAB を入手できます．
> 詳細は[こちら](https://jp.mathworks.com/academia/tah-support-program/eligibility.html)，または各大学の案内をご確認ください．

### 2. 各種 MATLAB Toolbox

以下の三つの Toolbox が必要です．
* Audio Toolbox
* DSP System Toolbox
* Signal Processing Toolbox

[ホーム > アドオン](https://jp.mathworks.com/products/matlab/add-on-explorer.html) から Add-On Explorer を開き，「Audio Toolbox」を検索してインストールしてください．

![Image](https://github.com/user-attachments/assets/686a9229-e8db-4a6c-bbca-a74d83eac8e1)

### 3. C/C++ コンパイラ

Audio Toolbox に対応した C/C++ コンパイラが必要です．
  
**Windows をお使いの場合**：[Microsoft Visual C++ 2022](https://visualstudio.microsoft.com/ja/vs/community/) を利用できます．

> [!IMPORTANT]
> Visual Studio インストール時に「C++ によるデスクトップ開発」を選択してください
> 
> <img src="https://github.com/user-attachments/assets/cb153f80-0a41-448b-9a19-6396ef86b96f" width="50%">
  
**Windows 以外をお使いの場合（動作未確認）**：対応するコンパイラの一覧表（[Mac](https://jp.mathworks.com/support/requirements/supported-compilers-mac.html) | [Linux](https://jp.mathworks.com/support/requirements/supported-compilers-linux.html)）の中から，Audio Toolbox にチェックマークの入っているものを選択してください．

## 実行用コマンド

テストベンチ起動コマンド
```
audioTestBench MATLAB_Gain MATLAB_EQ MATLAB_Distortion
```

プラグインの生成コマンド
```
generateAudioPlugin -outdir dll\ MATLAB_Gain.m
generateAudioPlugin -outdir dll\ MATLAB_EQ.m
generateAudioPlugin -outdir dll\ MATLAB_Distortion.m
```

## 免責事項
本リポジトリで提供するプログラム，スクリプト，およびドキュメント類は，参考目的で公開するものです．内容や動作については可能な限り検証していますが，その正確性，完全性，安全性，動作，特定用途への適合性を保証するものではありません．

本リポジトリのプログラムやコードを使用したことによってユーザーまたは第三者に生じたいかなる損害，トラブル，データ損失，または不利益についても，作者は一切の責任を負いません．

利用する場合は，ユーザー自身の責任において動作環境や依存関係，ライセンス条件を十分確認したうえでご利用ください．
本リポジトリの内容は予告なく変更，削除されることがありますので，あらかじめご了承ください．

