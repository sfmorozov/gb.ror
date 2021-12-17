# frozen_string_literal: true

##
#
def month(m)
  @m = m
  case m
  when (10..12)
    return 'месяцев'
  end
    x = m.to_s[-1].to_i
  case x
  when 1
    'месяц'
  when (2..4)
    'месяца'
  when (5..9)
    'месяцев'
  when 0
    'ровно'
  end
  end
