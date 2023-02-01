require './lib/card'

class CardGenerator
  attr_reader :filename
  def initialize(filename)
    @filename = filename
  end

  def parse_file(file)
    file.readlines.map do |line|
      line.split(",")
    end
  end

  def format_cards(parsed_file)
    parsed_file.map do |data|
      Card.new(data[0], data[1], data[2].strip)
    end
  end

  def cards
    filepath = "./#{filename}"
    file = File.open(filepath, "r")
    format_cards(parse_file(file)) 
  end
end
