# JNetHackインストーラ

<img src="misc/jnh-utf8-qt.png">

ローグライクの始祖、『NetHack』の体験を！

JNetHack 32x32 Qt版をインストールするバッチスクリプトです。   
[JNetHack 5.0.0-0.2](https://github.com/jnethack/jnethack-release)を基に、UTF-8とQtの修正を加えたものです。
※PullReqが煩雑になると思うので、今はフォークせず勝手派生しています！

## 環境

- Ubuntu 26.04 + Qt + ビルド環境

``` bash
$ sudo apt install build-essential patch qt6-base-dev qt6-base-dev-tools qt6-multimedia-dev libqt6multimedia6 qml6-module-qtmultimedia
```

## 使い方

clone して実行して下さい。  
ユーザーの`nh`ディレクトリにインストールされます。  
`desktop`ファイルなども入ります。

``` bash
$ git clone https://github.com/AZO234/JNetHack-UTF8-Qt-Fix.git
$ cd JNetHack-UTF8-Qt-Fix
$ ./JNetHack.sh
```

## 補足

`misc/tile32.bmp` は、[NetHack Wiki](https://github.com/JamesIV4/nethack-3d/blob/main/public/assets/5.0/Nevanda.png) のPNG画像をBMP画像に変換したものです。  
~~このためだけに変換ツール＆コマンドの解説を書きたくない。~~

## ライセンス

GPL-3.0
