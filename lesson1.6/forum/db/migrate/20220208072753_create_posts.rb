# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name, comment: 'Имя поста'
      t.string :content, comment: 'Содержимое поста'
      t.references :user, foreign_key: true,
                          comment: 'Внешний ключ на пользователя'

      t.timestamps
    end
  end
end
