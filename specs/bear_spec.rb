require('minitest/rg')
require('minitest/autorun')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup
    @fish_1 = Fish.new("fish_1")
    @fish_2 = Fish.new("fish_2")
    @fish_3 = Fish.new("fish_3")
    @fish = [@fish_1, @fish_2, @fish_3]
    @river = River.new("Montana River")
    @bear = Bear.new("Jim", "Black Bear")
  end

  def test_eat_fish
    @river.push_fish(@fish_1)
    @river.push_fish(@fish_2)
    @river.push_fish(@fish_3)
    @bear.eat_fish(@fish_1)
    assert_equal(1, @bear.stomach_count)
    assert_equal(2, @river.fish_count)
  end

end
