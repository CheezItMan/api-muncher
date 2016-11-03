class Recipe
  attr_reader :label, :image, :source, :url, :dietLabels, :healthLabels, :ingredientLines, :uri

  def initialize(label, image, source, url, dietLabels, healthLabels, ingredientLines, uri)
    @label = label
    @image = image
    @source = source
    @url = url
    @dietLabels = dietLabels
    @healthLabels = healthLabels
    @ingredientLines = ingredientLines
    @uri = uri
  end

end
