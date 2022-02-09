class CreateMarks < ActiveRecord::Migration[6.1]
  def change
    create_table :marks do |t|
      t.integer :value, comment: 'Оценка'
      t.references :user, foreign_key: true,       
                    comment: 'Связь с ID пользователя'
      t.references :post, foreign_key: true,
                    comment: 'Связь с ID поста'


      t.timestamps
    end
  end
end
