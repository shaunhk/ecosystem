require_relative('river.rb')
class Bear

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_count
    return @stomach.size
  end

  def delete_fish(fish)
    delete.(fish)
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

end
