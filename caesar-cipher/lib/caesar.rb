class Caesar
  DEFAULT_ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  DEFAULT_KEY = 3

  def initialize(key = DEFAULT_KEY, alphabet = DEFAULT_ALPHABET)
    @key, @alphabet = key, alphabet
  end

  def encrypt(message = "")
    translate(message, @alphabet, shifted_alphabet)
  end

  def decrypt(message = "")
    translate(message, shifted_alphabet, @alphabet)
  end

  private

  def translate(message, from, to)
    result = ""
    message.each_char do |char|
      result << begin
        if char == " "
          " "
        else
          to[from.index(char)]
        end
      end
    end

    result
  end

  def shifted_alphabet
    @shifted_alphabet ||= @alphabet[@key, @alphabet.size] + @alphabet[0, @key]
  end
end
