class RunLengthEncoding
  def self.encode(input)
    count = 1
    input.chars.map.with_index do |letter, index|
      if input[index + 1] == letter
        count += 1
        ""
      else
        string = "#{count if count > 1}#{letter.upcase}"
        count = 1
        string
      end
    end.join("")
  end

  def self.decode(input)
    input.scan(/(\d*+\w{1})/).flatten.reduce("") do |decoded_string, letter_chunk|
      string = letter_chunk.size > 1 ? letter_chunk[-1] * letter_chunk[0...-1].to_i : letter_chunk[0]
      decoded_string << string
    end
  end
end
