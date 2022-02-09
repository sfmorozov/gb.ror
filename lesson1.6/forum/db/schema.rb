# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_208_072_759) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'marks', force: :cascade do |t|
    t.integer 'value', comment: 'Оценка'
    t.bigint 'user_id', comment: 'Связь с ID пользователя'
    t.bigint 'post_id', comment: 'Связь с ID поста'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['post_id'], name: 'index_marks_on_post_id'
    t.index ['user_id'], name: 'index_marks_on_user_id'
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'name', comment: 'Имя поста'
    t.string 'content', comment: 'Содержимое поста'
    t.bigint 'user_id', comment: 'Внешний ключ на пользователя'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['user_id'], name: 'index_posts_on_user_id'
  end

  create_table 'users', comment: 'Пользователи', force: :cascade do |t|
    t.string 'name', comment: 'Имя пользователя'
    t.string 'email', comment: 'email пользователя'
    t.boolean 'active', default: true, comment: 'Активен?'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['email'], name: 'index_users_on_email', unique: true
    t.index ['name'], name: 'index_users_on_name', unique: true
  end

  add_foreign_key 'marks', 'posts'
  add_foreign_key 'marks', 'users'
  add_foreign_key 'posts', 'users'
end
