# README

# アプリケーション名
  nurseryschoolalbum-31
# アプリケーション概要
  保育園児の保護者が子どもの写真を共有するWEBアルバム
  
# URL
  https://nurseryschoolalbum-31.onrender.com
  


# テスト用アカウント
  Bacic認証パスワード: 2222  
  Basic認証ID: admin  
  メールアドレス: test1@test  
  パスワード: test1111  

# 利用方法

  # 写真投稿  
    1トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う  
    2新規投稿から任意の写真を選び投稿する(6枚まで選択可)
  # 閲覧  
    1トップページ・・・新着順表示  
    2投稿者ページ・・・投稿者毎の写真一覧  
    3マイページ・・・・ログインユーザーの写真一覧  

# 作成した背景
  目的  
  写真のみを共有するアプリを作成し  メッセージをグループLINEでやり取りする時間を削減すること  
  卒園児童にアルバム(紙)を作成する場合の金銭的負担(5,000～8,000円/冊)を軽減すること

# テーブル構成

## users テーブル
| Column             | Type   | Options                    |
| ------------------ | ------ | ---------------------------|
| email              | string | null: false , unique: true |
| encrypted_password | string | null: false                |
| nickname           | string | null: false                |
   
### Association

- has_many :posts

## posts テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user



