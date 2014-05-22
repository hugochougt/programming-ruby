def show_regexp(string, pattern)
  match = pattern.match(string)
  if match
    "#{match.pre_match}->#{match[0]}<-#{match.post_match}"
  else
    "no match"
  end
end

puts show_regexp("very interesting", /t/)
puts show_regexp("Fats Waller", /lle/)
puts show_regexp("Fats Waller", /z/)
