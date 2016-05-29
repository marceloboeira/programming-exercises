class Caesar
  DEFAULT_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  DEFAULT_KEY = 3

  def initialize(key = DEFAULT_KEY, alphabet = DEFAULT_ALPHABET)
    @key, @alphabet = key, alphabet
  end

  def encrypt(message = "")
    result = ""
    message.each_char do |char|
      result << begin
        if char == " "
          " "
        else
          shifted_alphabet[@alphabet.index(char)]
        end
      end
    end

    result
  end

  private

  def shifted_alphabet
    @shifted_alphabet ||= @alphabet[@key, @alphabet.size] + @alphabet[0, @key]
  end

end
