# frozen_string_literal: true

namespace :date_time do
  desc 'Записывает в /tmp файл development.txt с текущей датой и временем'
  task :to_file do
    File.new('tmp/development.txt', 'w').write Time.now
  end

  desc 'Принимаем дату рождения и возращаем возраст (rails date_time:how_old_am_i[YYYYMMDD])'
  require 'year'
  require 'month'
  task :how_old_am_i, [:params] do |_t, args|
    date_of_birth = args.params
    m = 0
    m += 1 while (Date.parse(date_of_birth) >> m + 1) <= Date.today
    y = m / 12
    m -= (y * 12)
    puts "Ваш возраст: #{y} #{year(y)} #{m if m.positive?} #{month(m)}"
  end
end
