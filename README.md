# README

# テーブル設計

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

