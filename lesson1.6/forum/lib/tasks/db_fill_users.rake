# frozen_string_literal: true

namespace :db do
  desc 'Заполнение таблицы пользователей тестовыми данными rails db:fill_users [Число экземпляров пользователей])'
  task :fill_users, [:params] => :environment do |_t, args|
    args.with_defaults(params: 10)
      args.params.to_i.times do
        User.create(
          name: FFaker::NameRU.name,
          email: FFaker::Internet.email
        )
      end
    end
end
