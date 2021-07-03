# Miyazaki Wheelchair Runner

## サイト概要
<!--<img width="1078" alt="mimpi_summarize" src="https://user-images.githubusercontent.com/75741350/121880795-64a87380-cd49-11eb-8f1e-e8931f7b71bb.png">-->

Miyazaki Wheelchair Runner<br>
近年、注目を集めているパラリンピック
私自身も、障害のある子供たちを対象としたボランティア活動などに参加し、頑張る子供達のサポートをさせて頂いています。
しかし、障害者スポーツの競技人口やボランティア人口はまだまだ少なく、練習環境なども限られているため、厳しい状態です。
特に地方では、障害者を中心としたイベントや大会などが少ないため、横のつながりを持って切磋琢磨できる環境も形成しにくい状況です。
こうした、「練習環境」や「横のつながり」の問題点を少しでも改善するため、練習場所の共有とイベントの共有を中心にこのアプリを作成しました。


### ターゲットユーザ
- 宮崎県の車椅子ランナーの方
- ボランティアの方

### 主な利用シーン
- 車椅子競技の練習ができる場所の共有
- 練習状況などの共有
- 合同の練習会や交流会などの開催

## 機能一覧

### 主要な機能
 1. ユーザー認証
 2. 投稿機能
 3. コメント機能
 4. いいね機能(非同期通信)
 5. ランキング機能
 6. カレンダー機能
 7. イベント参加機能


### 設計書・インフラ構成図
<!--<img width="950" alt="インフラ構成図" src="https://user-images.githubusercontent.com/75741350/121875212-2ad46e80-cd43-11eb-9ad5-95391b3b7997.png">-->

 - [ER図](https://drive.google.com/file/d/1zpixlj0WnB-vpX6EqUON70nrIfD5lNXW/view?usp=sharing) (draw.io)

 - [テーブル定義書](https://docs.google.com/spreadsheets/d/1X5vSH1DfPpQ8ylAWjc3ZewuXVI1mvEyblwx0sk5vDyw/edit?usp=sharing) (スプレッドシート)

## 環境・使用技術
### 開発環境
- OS:Linux(CentOS)
- DB:SQLite
- IDE:Cloud9

### フロントエンド
- Bootstrap 4.5
- JavaScript, jQuery, Ajax

### バックエンド
- Ruby 2.6.3
- Rails 5.2.5

### 本番環境
- AWS(EC2, RDS for MySQL, Route53, ACM, ALB)
- MySQL 5.7.22
- Nginx, Puma

### テスト
- RSpec
- GitHubActions(CI/CD)

## 使用素材
freepik https://www.freepik.com/
