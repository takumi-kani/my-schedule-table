# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               |         | unique: true, null: false |
| encrypted_password | string  | null: false               |

### Association

- has_many :schedules
- has_many :comments


## schedules テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| start_time | time       | null: false                    |
| end_time   | time       | null: false                    |
| place      | string     | null: false                    |
| info       | text       | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :comments


## comments テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| text     | text       | null: false                    |
| user     | references | null: false, foreign_key: true |
| schedule | references | null: false, foreign_key: true |

### Association

- has_many :users
- belongs_to :schedule