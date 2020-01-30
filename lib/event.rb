require "./lib/standard_deviation.rb"

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

  def standard_deviation_age
    standard_deviation(ages)
  end

end
