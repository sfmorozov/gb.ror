# frozen_string_literal: true

require 'rubygems'
require 'nokogiri'
require 'open-uri'

src = Nokogiri::HTML(URI.open('https://gb.ru')).css('a')
puts src.find { |x| x.text.match(/^\+|[0-9]|\d/) }.text
