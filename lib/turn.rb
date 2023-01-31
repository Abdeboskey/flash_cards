class Turn
  attr_reader :guess, :card
  def initialize(guess, card)
    @guess = guess
    @card = card
  end

  def correct?
    card.answer.downcase == guess
  end

  def feedback
    correct? ? "Correct!" : "Incorrect! The correct answer was '#{card.answer}'"
  end
end
