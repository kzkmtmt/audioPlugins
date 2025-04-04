
# MATLAB で Audio Plugin 開発

松本和樹 (早稲田大学 MATLAB Student Ambassador)　

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=kzkmtmt/audioPlugins)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat&logo=YouTube&logoColor=white)](https://www.youtube.com/watch?v=6pWxrbXzk8g&list=PLiM3LSbTyvwuP9VU9jQL1NJttGce5oZxS)
[![GitHub](https://img.shields.io/badge/GitHub-%23121011.svg?style=flat&logo=github&logoColor=white)](https://github.com/kzkmtmt/audioPlugins)
[![X](https://img.shields.io/badge/X-000000?style=flat&logo=X&logoColor=white)](https://x.com/km_MATLAB_Amb)

## ダウンロードと視聴

* [プログラム（最新版）](https://github.com/kzkmtmt/audioPlugins/archive/refs/heads/main.zip)
* [解説動画](https://www.youtube.com/watch?v=6pWxrbXzk8g&list=PLiM3LSbTyvwuP9VU9jQL1NJttGce5oZxS)

## 内容

MATLAB Student Ambassador の活動の一環として作成した Audio Plugin 開発のチュートリアルです．MATLAB の Audio Toolbox の機能を用い，音楽制作ソフトウェア上で動作する VST Plugin を生成します．

本ページでは，MATLAB を用いて実装した Audio Plugin の実装を公開しています．解説は [YouTube](https://www.youtube.com/watch?v=6pWxrbXzk8g&list=PLiM3LSbTyvwuP9VU9jQL1NJttGce5oZxS) を参照してください．

| #    | 内容                                                         | 解説 <br> [![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=flat&logo=YouTube&logoColor=white)](https://www.youtube.com/watch?v=6pWxrbXzk8g&list=PLiM3LSbTyvwuP9VU9jQL1NJttGce5oZxS) | 実装 <br> [![MATLAB](https://img.shields.io/badge/MATLAB-0076A8?style=flat&logo=MATLAB&logoColor=white)](https://github.com/kzkmtmt/audioPlugins/archive/refs/heads/main.zip) |                             資料                             |
| ---- | ------------------------------------------------------------ | :----------------------------------------------------------: | ------------------------------------------------------------ | :----------------------------------------------------------: |
| 1    | **ゲインの実装** <br> プラグイン作りの基礎                           | [![YouTube](https://img.youtube.com/vi/6pWxrbXzk8g/mqdefault.jpg)](https://www.youtube.com/watch?v=6pWxrbXzk8g&list=PLiM3LSbTyvwuP9VU9jQL1NJttGce5oZxS&index=1) | `MATLAB_Gain.m` <br> `note_01_Gain.mlx`                      | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_01_Gain.pdf) / [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_01_Gain.html) |
| 2    | **イコライザ** <br> デジタルフィルタ <br> フレームベース処理     | [![YouTube](https://img.youtube.com/vi/D5gkb9DIL-c/mqdefault.jpg)](https://www.youtube.com/watch?v=D5gkb9DIL-c&list=PLiM3LSbTyvwuP9VU9jQL1NJttGce5oZxS&index=2) | `MATLAB_EQ.m`<br>`calcBPFCoeffs.m`<br>`calcHPFCoeffs.m`<br>`calcLPFCoeffs.m` <br> `note_02_EQ.mlx` | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_02_EQ.pdf) / [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_02_EQ.html) |
| 3    | **ディストーション** <br> サンプリング定理 <br> オーバーサンプリング | [![YouTube](https://img.youtube.com/vi/x5_T0xXXLu8/mqdefault.jpg)](https://www.youtube.com/watch?v=x5_T0xXXLu8&list=PLiM3LSbTyvwuP9VU9jQL1NJttGce5oZxS&index=3) | `MATLAB_Distortion.m`<br> `note_03_Distortion.mlx`           | [PDF](https://kzkmtmt.github.io/audioPlugins/pdf/AudioPlugin_03_Distortion.pdf) / [HTML](https://kzkmtmt.github.io/audioPlugins/AudioPlugin_03_Distortion.html) |


> [!WARNING]
> `note` ディレクトリは削除し，すべてのコードをリポジトリ直下に配置しました．`MATLAB_Distortion.m` は改良版をアップロードしています．解説動画内の実装とは挙動が異なりますのでご注意ください．

> [!NOTE]
> Audio Plugin 作成の前に，MATLAB の基本的な使い方を習得することをお勧めします．学習にはブラウザ上で MATLAB を学習できる [MATLAB 入門](https://matlabacademy.mathworks.com/jp/details/matlab-onramp/gettingstarted) をご活用ください．


## 実行手順
[プログラム（最新版）](https://github.com/kzkmtmt/audioPlugins/archive/refs/heads/main.zip) をダウンロード & 展開し，プログラムの入っているフォルダを MATLAB の「現在のフォルダ」として開いてください．以下のような画面になっていれば OK です．

  ![image](https://github.com/user-attachments/assets/d34658c9-c091-4f0a-9bde-e306cd454a1e)


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

## 参考文献

1. MathWorks, Audio Plugin Creation and Hosting, url: https://jp.mathworks.com/help/audio/audio-plugin-creation-and-hosting.html
1. 鏡 慎吾, やる夫で学ぶディジタル信号処理, url: http://www.ic.is.tohoku.ac.jp/~swk/lecture/yaruodsp/main.html
1. U. Zölzer, Ed., DAFX: Digital Audio Effects. Chichester, UK: John Wiley & Sons, Ltd, 2011. doi: https://doi.org/10.1002/9781119991298

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

