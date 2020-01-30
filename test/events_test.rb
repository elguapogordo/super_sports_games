require 'minitest/autorun'
require 'minitest/pride'
require './lib/games'
require './lib/event'

class EventsTest < Minitest::Test

  def test_it_has_a_name
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal event.name, "Curling"
  end

  def test_it_has_ages
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal event.ages, [24, 30, 18, 20, 41]
  end

  def test_it_shows_max_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal event.max_age, 41
  end

  def test_it_shows_min_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal event.min_age, 18
  end

  def test_it_shows_average_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal event.average_age, 26.6
  end

  def test_it_shows_standard_deviation_age
    event = Event.new("Curling", [24, 30, 18, 20, 41])
    assert_equal event.standard_deviation_age, 8.28
  end

end
