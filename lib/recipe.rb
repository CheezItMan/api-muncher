class Recipe
  attr_reader :label, :image, :source, :url, :dietLabels, :healthLabels, :ingredientLines

  def initialize(label, image, source, url, dietLabels, healthLabels, ingredientLines)
    @label = label
    @image = image
    @source = source
    @url = url
    @dietLabels = dietLabels
    @healthLabels = healthLabels
    @ingredientLines = ingredientLines
  end

end
