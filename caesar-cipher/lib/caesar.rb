class Caesar
  def self.encrypt(input, key = 3)
    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    shifted_alphabet =  alphabet[key, alphabet.size] + alphabet[0, key]

    result = ""
    input.each_char do |char|
      result << begin
        if char == " "
          " "
        else
          shifted_alphabet[alphabet.index(char)]
        end
      end
    end

    result
  end
end
