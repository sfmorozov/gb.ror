# frozen_string_literal: true

namespace :db do
  desc 'Удаляем данные из таблиц'
  task flush: :environment do
    Mark.destroy_all
    Post.destroy_all
    User.destroy_all
  end
end
