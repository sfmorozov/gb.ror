# frozen_string_literal: true

require 'httparty'
r = HTTParty.get 'https://gb.ru/courses'
puts r.body.lines.count
