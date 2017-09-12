class BoggleBoard
  def initialize
    @spaces = Array.new(16,"_")
    @alphabet = ('A'..'Z').to_a
  end

  def shake!
    output_string_alphabet=[]
    alphabet= @alphabet
    alphabet=alphabet.sample(16)
    4.times do
    output_string_alphabet << alphabet.shift(4).join('') + "\n"
    end
    output_string_alphabet
  end

  # Defining to_s on an object controls how the object is
  # represented as a string, e.g., when you pass it to puts
  def to_s
    # "omg what is this? try printing me."
    output_string = String.new
    letter_array=@spaces
    4.times do
    output_string << letter_array.shift(4).join('') + "\n"
    end
    output_string

  end
end
board=BoggleBoard.new
puts board.to_s
puts board.shake!
