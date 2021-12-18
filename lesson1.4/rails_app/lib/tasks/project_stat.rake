# frozen_string_literal: true

namespace :project_stat do
  desc 'Ищем количество заданного типа файлов в проекте rails project_stat:files[txt])'
  task :files, [:params] do |_t, args|
    args.with_defaults(params: 'rb')
    count = 0
    Find.find('/home/sergo/gb.ror/lesson1.4/rails_app') do |path|
      if FileTest.file?(path)
        count += 1 if File.basename(path).end_with?(args.params.to_s)
      else
        next
      end
    end
    puts "#{args.params}" ' files count: ' "#{count}"
  end

  desc 'Подсчёт строк в файлах *.rb'
  task :strings do
  end
end
