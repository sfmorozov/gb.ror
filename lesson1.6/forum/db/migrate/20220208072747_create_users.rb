class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users, comment: 'Пользователи' do |t|
      t.with_options index: { unique: true } do
        string :name, comment: 'Имя пользователя'
        string :email, comment: 'email пользователя'
      end
      t.boolean :active, 
                default: true,
                comment: 'Активен?'

      t.timestamps
    end
  end
end
