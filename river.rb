class River

  attr_reader :fish

  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    return @fish.size()
  end

  def push_fish(fish)
    @fish.push(fish)
  end

  def delete_fish(fish)
    @fish.delete(fish)
  end

end
