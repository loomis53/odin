def ceasar_cipher(text, shift_by)
  text.chars.map do |char|
    if char.match(/[a-zA-Z]/)
      base = char.ord < 97 ? 65 : 97

      shifted = ((char.ord - base + number) % 26) + base
      shifted.chr
    else
      char
    end
  end.join
end