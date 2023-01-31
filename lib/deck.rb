class Deck 
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def count
    cards.count
  end

  def cards_in_category(category)
    cards.select { |card| card.category == category }
  end

  def get_all_categories
    categories = []
    cards.each do |card|
      categories << card.category unless categories.include? card.category
    end
    categories
  end
end
