require 'find'

total_size = 0

Find.find('/home/sergo/gb.ror/lesson1.4/rails_app') do |path|
    if FileTest.file?(path)
        if File.basename(path).end_with?('rb')
            total_size += 1
        end
    else
       next
    end
  end
 p total_size
