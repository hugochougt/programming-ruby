require './ex25'
# => true 
sentence = "All good things come to those who wait."
# => "All good things come to those who wait." 
words = Ex25.break_words(sentence)
# => ["All", "good", "things", "come", "to", "those", "who", "wait."] 
sorted_words = Ex25.sort_words(words)
# => ["All", "come", "good", "things", "those", "to", "wait.", "who"] 
Ex25.print_first_word(words)
# All
# => nil 
Ex25.print_last_word(words)
# wait.
# => nil 
words
# => ["good", "things", "come", "to", "those", "who"] 

