require "cmath"

class Event
  attr_reader :name, :ages

  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    ages.sort.last
  end

  def min_age
    ages.sort.first
  end

  def average_age
    (ages.sum / ages.count.to_f).round(2)
  end

  def standard_deviation(ages)
    avg = ages.sum / ages.count.to_f
    step4 = []
    ages.each { |age| step4 << (age -= avg) }
    step5 = []
    step4.each { |num| step5 << (num ** 2) }
    p CMath.sqrt(step5.sum / step5.count).round(2)
  end

  def standard_deviation_age
    standard_deviation(ages)
  end

end
