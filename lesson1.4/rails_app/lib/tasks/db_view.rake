# frozen_string_literal: true

namespace :db do
  desc 'Просмотр баз данных на локальном сервере'
  task :view do
    puts 'Базы на локальном сервере: '
    `psql --list`.split(/\n/).each do |str|
      str.sub(/^ {1}\w+ */) do |w|
        puts w.strip
      end
    end
  end
end
