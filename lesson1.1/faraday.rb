# frozen_string_literal: true

require 'faraday'
r = Faraday.get 'https://gb.ru/courses'
puts r.body.lines.count
