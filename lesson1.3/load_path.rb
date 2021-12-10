# frozen_string_literal: true

puts (File.new('rails_load_path').readlines).difference(File.new('load_path').readlines)
