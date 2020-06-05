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

## membersテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

## userテーブル

|Column|Type|Options|
|------|----|-------|
|name|references|null: false, foreign_key: true|
|email|references|null: false, foreign_key: true|
|password|string|null: false|

### Association
- has_many :groups, through: member
- has_many :messages

## groupテーブル

|Column|Type|Options|
|------|----|-------|
|name|references|null: false, foreign_key: true|

### Association
- has_many :users through: member
- has_many :messages

## messageテーブル

|Column|Type|Options|
|------|----|-------|
|user|reference|null: false, foreign_key: true|
|group|reference|null: false, foreign_key: true|
|text|text|null: false|
|image|string|

### Association
- belongs_to :group
- belongs_to :user