class Affirmation
  attr_reader :description, :category

  def initialize(data)
    @description = data[:attributes][:description]
    @category = data[:attributes][:category]
  end
end
