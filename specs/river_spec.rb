require('minitest/rg')
require('minitest/autorun')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup
    @fish_1 = Fish.new("Trout")
    @fish_2 = Fish.new("Pike")
    @river_1 = River.new("Amazon")
  end

  def test_fish_count
    assert_equal(0, @river_1.fish_count)
  end
  #
  def test_fish_delete
    @river_1.push_fish(@fish_1)
    @river_1.push_fish(@fish_2)
    @river_1.delete_fish(@fish_1)
    assert_equal(1, @river_1.fish_count)
  end

end
