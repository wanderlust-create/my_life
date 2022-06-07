class AffirmationsFacade
  def self.affirmations(category)
    data = AffirmationsService.get_affirmations(category)[:data]
    data.map { |result| Affirmation.new(result) }
  end
end
