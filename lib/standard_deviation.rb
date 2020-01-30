require "cmath"

ages = [24, 30, 18, 20, 41]

def standard_deviation(ages)
  avg = ages.sum / ages.count.to_f
  step4 = []
  ages.each { |age| step4 << (age -= avg) }
  step5 = []
  step4.each { |num| step5 << (num ** 2) }
  p CMath.sqrt(step5.sum / step5.count).round(2)
end

standard_deviation(ages)
