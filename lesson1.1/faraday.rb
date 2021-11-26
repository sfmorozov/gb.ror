# frozen_string_literal: true

require 'faraday'
r = Faraday.get 'https://gb.ru/courses'
p r.body.lines.count
