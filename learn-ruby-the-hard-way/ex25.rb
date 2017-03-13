# Exercise 25: Even More Practice

module Ex25
    def self.break_words(stuff)
        words = stuff.split(' ')
        words
    end

    def self.sort_words(words)
        words.sort()
    end

    def self.print_first_word(words)
        word = words.shift()
        puts word
    end

    def self.print_last_word(words)
        word = words.pop()
        puts word
    end

    def self.sort_sentence(sentence)
        words = break_words(sentence)
        sort_words(words)
    end

    def self.print_first_and_last(sentence)
        words = break_words(sentence)
        print_first_word(words)
        print_last_word(words)
    end

    def self.print_first_and_last_sorted(sentence)
        words =sort_sentence(sentence)
        print_first_word(words)
        print_last_word(words)
    end
end
