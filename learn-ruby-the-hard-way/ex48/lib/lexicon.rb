class Lexicon
    def initialize()
        @@directions = ['north', 'south', 'east', 'west', 'down', 'up', 'left', 'right', 'back']
        @@verbs = ['go', 'stop', 'kill', 'eat']
        @@nouns = ['door', 'bear', 'princess', 'cabinet']
        @@stop_words = ['the', 'in', 'of', 'from', 'at', 'it']
    end
    def scan(sentence)
        words = sentence.split(' ')
        result = []
        words.each do |word|
            if @@directions.include?(word)
                result.push(Pair.new(:direction, word))
            elsif @@verbs.include?(word)
                result.push(Pair.new(:verb, word))
            elsif @@nouns.include?(word)
                result.push(Pair.new(:noun, word))
            elsif @@stop_words.include?(word)
                result.push(Pair.new(:stop, word))
            elsif number?(word)
                result.push(Pair.new(:number, word.to_i))
            else
                result.push(Pair.new(:error, word))
            end
        end
        return result
    end
    def number?(str)
        begin
            true if Integer(str)
        rescue ArgumentError
            false
        end
    end
end
Pair = Struct.new(:token, :word)
