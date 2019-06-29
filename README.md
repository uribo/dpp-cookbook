
<!-- README.md is generated from README.Rmd. Please edit that file -->

# 📖 Data Preprocessing Cookbook 👨‍🍳

<!-- badges: start -->

<!-- badges: end -->

R言語でのモデリングおよび統計解析のためのパッケージを扱う[tidymodels](https://github.com/tidymodels/tidymodels)の中から[{recipes}](https://github.com/tidymodels/recipes),
[{embed}](https://github.com/tidymodels/embed),
[{textrecipes}](https://github.com/juliasilge/tidytext)
パッケージを使ったデータ前処理、特徴量エンジニアリングの手法を紹介します。

（余力があればPython、scikit-learn preprocessing等を利用した処理手順についても書きます）

## TOC

  - パッケージ全般
  - データ整形
  - [スケーリング処理](slides/scaling.Rmd)
  - 特徴量選択（フィルタ法）
      - 次元削減
  - [不均衡データに対する調整](slides/class-imbalance.Rmd)
  - 欠損値補完
      - kNN
  - データ分割
  - 特徴量エンジニアリング
      - numeric
      - categorical
      - text
      - date and time
      - coordinates

## Dataset

### 地価公示データ (land price)

国土交通省 国土数値情報 （地価公示データ 第2.4版 L01 平成30年度
<http://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-L01-v2_5.html>
）を使用し瓜生真也が作成・加工したものです。

  - 地価公示データ… 関東地方(一都六県)のデータを利用
  - 平成27年度 国勢調査 従業地・通学地による人口・就業状態等集計

### 土砂災害・雪崩メッシュデータ (hazard)

国土交通省 国土数値情報（土砂災害・雪崩メッシュデータ 第1.1版 L01 平成23年度
<http://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-A30a5.html>
）を使用し瓜生真也が作成・加工したものです。

また関連する気象データは

気象庁ホームページ 過去の気象データ・ダウンロード
<http://www.data.jma.go.jp/gmd/risk/obsdl/index.php> より対象地域、対象とする期間
(2016年7月) のデータを瓜生真也加工して作成しました。

  - 九州地方のデータを利用

### ビールへの支出データ (beer)

2018年7月から同年9月 (3ヶ月)の日毎の

値

気象庁ホームページ 過去の気象データ検索
<http://www.data.jma.go.jp/obd/stats/etrn/index.php>
より、観測地点「東京」のデータを瓜生真也加工して作成しました。

-----

## Information

**Author**: Uryu Shinya (@uribo, Twitter:
[@u\_ribo](http://twitter.com/u_ribo) )

**License**: MIT

**Session Info**

各スライドの末尾にRのバージョンおよびパッケージを掲載しています。

  - R 3.6.0
  - local (macOS Mojave)
  - docker… Dockerfile is
    [here](https://github.com/uribo/dpp-cookbook/blob/master/Dockerfile)
