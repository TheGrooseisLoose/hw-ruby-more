class Dessert
  attr_accessor :name, :calories

  def initialize(name, calories)
    @name=name
    @calories=calories
  end

  def healthy?
    if calories < 200
      return true
    end
    false
  end

  def delicious?
    true
  end

end

class JellyBean < Dessert
  attr_accessor :flavor

  def initialize(flavor)
    @calories = 5
    @flavor = flavor.to_s
    @name = "#{flavor.to_s} jelly bean"
  end

  def delicious?
    if flavor == "licorice"
      return false
    end
    true
  end
end