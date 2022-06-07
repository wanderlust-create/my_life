class AffirmationsService
  def self.get_affirmations(category)
    Rails.cache.fetch("get_affirmations_#{category}", expires_in: 24.hours) do
      url = "https://mylifeaffirmations.herokuapp.com/api/v1/affirmations?category=#{category}"
      response = Faraday.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
