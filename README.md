# README
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email   |string|null: false|
|password|string|null: false|
### Association
- has_many :threads_users
- has_many :threads,  through:  :threads_users
- has_many :posts


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text |text||
|user_id  |integer|null: false,  foreign_key:true|
|thread_id|integer|null: false,  foreign_key:true|
### Association
- belongs_to :user
- belongs_to :thread


## threadsテーブル
|Column|Type|Options|
|------|----|-------|
|name  |string |null: false|
### Association
- has_many  :threads_users
- has_many  :users,  through:  :threads_users
- has_many  :posts


## threads_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id |integer|null: false, foreign_key: true|
|thread_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :thread
- belongs_to :user


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
