class AffirmationsService
  def self.get_affirmations(keyword)
    Rails.cache.fetch("get_affirmations_#{keyword}", expires_in: 24.hours) do
      url = "https://mylifeaffirmations.herokuapp.com/api/v1/affirmations?category=#{keyword}"
      response = Faraday.get(url)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
