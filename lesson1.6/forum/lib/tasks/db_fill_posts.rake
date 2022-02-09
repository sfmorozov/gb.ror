# frozen_string_literal: true

namespace :db do
  desc 'Заполнение таблицы подпунктов тестовыми данными rails db:fill_items [Число экземпляров подпунктов])'
  task :fill_posts, [:params] => :environment do |_t, args|
    args.with_defaults(params: 25)
    if User.all.ids.count.positive?
      args.params.to_i.times do
        Post.create(
          name: FFaker::LoremRU.word.capitalize,
          content: FFaker::LoremRU.sentence,

          user_id: User.all.ids.sample(1)[0]
        )
      end
    else
      (puts 'Для начала нужно создать Пользователей rails db:fill_users')
    end
  end
end
