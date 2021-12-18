# frozen_string_literal: true

def year(year)
  @year = year
  x = year.to_s[-1].to_i
  case x
  when 1
    'год'
  when (2...4)
    'года'
  when (5...9)
    'лет'
  when 0
    'лет'
  end
end
