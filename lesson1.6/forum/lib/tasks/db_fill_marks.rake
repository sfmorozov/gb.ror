# frozen_string_literal: true

namespace :db do
  desc 'Заполнение таблицы событий тестовыми данными rails db:fill_marks)'
  task :fill_marks => :environment do

    if Post.all.ids.count.positive? && User.all.ids.count.positive?
      (User.all.ids.count * Post.all.ids.count).times do
        Mark.create(
          value: rand(1..5),
          post_id: Post.all.ids.sample(1)[0],
          user_id: User.all.ids.sample(1)[0]
        )
      end
    else
      (puts 'Сначала нужно заполнить пользователей: rails db:fill_users и посты rails db:fill_posts')
    end
  end
end
