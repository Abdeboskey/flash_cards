require './lib/card_generator'
require './lib/card'

RSpec.describe CardGenerator do
  it 'exists' do
    filename = 'vitals_tables.txt'
    card_generator = CardGenerator.new(filename)

    expect(card_generator).to be_instance_of(CardGenerator)
  end

  it 'can return a collection of cards' do
    filename = 'vitals_tables.txt'
    card_generator = CardGenerator.new(filename)

    expect(card_generator.cards[0]).to be_instance_of(Card)
  end

  it 'uses a text file to create the collection of cards' do
    filename = 'vitals_tables.txt'
    card_generator = CardGenerator.new(filename)

    expect(card_generator.cards[0].question).to eq("What is a normal breathing rate for an adult?")
    expect(card_generator.cards[0].answer).to eq("12-20")
    expect(card_generator.cards[0].category).to eq("Breathing Rates")
  end
end
