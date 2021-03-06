
<!-- README.md is generated from README.Rmd. Please edit that file -->

📖 Data Preprocessing Cookbook 👨‍🍳
=================================

<!-- badges: start -->
<!-- badges: end -->

R言語でのモデリングおよび統計解析のためのパッケージを扱う[tidymodels](https://github.com/tidymodels/tidymodels)の中から[{recipes}](https://github.com/tidymodels/recipes),
[{embed}](https://github.com/tidymodels/embed),
[{textrecipes}](https://github.com/tidymodels/textrecipes)
パッケージを使ったデータ前処理、特徴量エンジニアリングの手法を紹介します。

（余力があればPython、scikit-learn
preprocessing等を利用した処理手順についても書きます）

TOC
---

-   パッケージ全般
-   データ整形
-   [スケーリング処理](https://uribo.github.io/dpp-cookbook/slides/scaling)
-   特徴量選択（フィルタ法）
    -   次元削減
-   [不均衡データに対する調整](https://uribo.github.io/dpp-cookbook/slides/class-imbalance)
-   [欠損値への対応](https://uribo.github.io/dpp-cookbook/slides/missing-data)
    -   kNN
-   [データ分割](https://uribo.github.io/dpp-cookbook/slides/data-split)
-   特徴量エンジニアリング
    -   numeric
    -   categorical
    -   text
    -   date and time
    -   coordinates
-   モデル・アルゴリズムあれこれ
    -   線形回帰
    -   ランダムフォレスト
-   評価指標あれこれ
-   パラメータ探索

Dataset
-------

### 地価公示データ (land price)

国土交通省 国土数値情報 （地価公示データ 第2.4版 L01 平成30年度
<a href="https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-L01-v2_5.html" class="uri">https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-L01-v2_5.html</a>
）を使用し瓜生真也が作成・加工したものです。

うち関東一都六県のデータに対しては、該当する市区町村の夜間人口データを
平成27年度 国勢調査 従業地・通学地による人口・就業状態等集計
より付与しました。

### 土砂災害・雪崩メッシュデータ (hazard)

国土交通省 国土数値情報（土砂災害・雪崩メッシュデータ 第1.1版 A30a5
平成23年度
<a href="https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-A30a5.html" class="uri">https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-A30a5.html</a>
）を使用し瓜生真也が作成・加工したものです。

このうち九州地方のデータにおいては

各メッシュと対応する標高・傾斜度の情報を

同国土数値情報　標高・傾斜度3次メッシュデータ 第2.2版 G04a
平成21(2009)年度
<a href="https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-G04-a.html" class="uri">https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-G04-a.html</a>

より、またメッシュ内に含まれる特殊土壌の情報を

特殊土壌地帯データ 第3.0版 平成28年
<a href="https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-A23-v3_0.html" class="uri">https://nlftp.mlit.go.jp/ksj/gml/datalist/KsjTmplt-A23-v3_0.html</a>

より付属させています。

加えて気象庁ホームページ 過去の気象データ・ダウンロード
<a href="http://www.data.jma.go.jp/gmd/risk/obsdl/index.php" class="uri">http://www.data.jma.go.jp/gmd/risk/obsdl/index.php</a>
より対象地域、対象とする期間 (2016年7月)
のデータを関連する気象データとして瓜生真也が加工・作成しました。

### ビールへの支出データ (beer)

総務省 家計調査 家計収支編 二人以上の世帯「1世帯当たり1か月間の日別支出
(表6-16)」の項目から「ビール」に対する支出金額のうち、2018年7月から同年9月
(3ヶ月)の日毎の値、および2015年1月から2018年12月の各月の平均値を利用しています。

また統計データに含まれる日付および月間の気象データを、気象庁ホームページ
過去の気象データ検索
<a href="http://www.data.jma.go.jp/obd/stats/etrn/index.php" class="uri">http://www.data.jma.go.jp/obd/stats/etrn/index.php</a>
より、観測地点「東京」のデータとして瓜生真也が加工し結合しています。

References
----------

------------------------------------------------------------------------

Information
-----------

**Author**: Uryu Shinya ([@uribo](https://github.com/uribo), Twitter:
[@u\_ribo](http://twitter.com/u_ribo) )

**License**: MIT

**Session Info**

各スライドの末尾にRのバージョンおよびパッケージを掲載しています。

-   R 4.0.2
-   local (macOS Catalina)
-   docker… Dockerfile is
    [here](https://github.com/uribo/dpp-cookbook/blob/master/Dockerfile)
