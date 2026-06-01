# mdsposter

MDS 向けにポスターの設定を行うものです．

## 動作環境

LuaLaTeX 上で動きます．(u)pLaTeX 上でも動くと思われますが，保証はしません．

以下のパッケージを内部で読み込みます．

* jlreq
* ifthen
* color
* bxpapersize

## 使い方

### 読み込み

通常通り
```latex
\documentclass{mdsposter}
```
とします．

### クラスオプション

`platex`/`uplatex`/`lualatex` と `dvips`/`dvipdfmx` を
jlreq.cls に渡します．それ以外は受け付けません．

### 注意事項

* フォントの設定は行わないので，各自で行うようにしてください．
* (u)pLaTeX で多書体化を行う場合，jlreq-deluxe パッケージを使用してください．
otf パッケージを用いた場合の組版結果は保証しません．
* ページ数が 2 ページを超えた場合，警告を出すようになっています．

## 更新履歴
