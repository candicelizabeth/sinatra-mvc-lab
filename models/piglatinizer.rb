require "pry"
class PigLatinizer 
    def piglatinize(input)
        # binding.pry
        input.split(" ").map do |word| 
            vowels = "aeiouAEIOU"
            if vowels.include?(word[0])
              word << "way"
            else 
               new_vowel = word.split("").detect {|letter| vowels.include?(letter)}
               vowel_index = word.index(new_vowel)
               const = word.slice(0...vowel_index)
               leftovers = word.slice(vowel_index..)
               leftovers + const + "ay"
            #    binding.pry
            #  vowel_index = word.index(/[aeiouAEIOU]/)
            #  const = word.slice(0...vowel_index)
            #  leftovers = word.slice(vowel_index..word.length-1)
     
            #  leftovers + const + "ay"
             # binding.pry
            end
        end.join(" ")
    end

    # def vowel?(letter)
    #     binding.pry
    #     vowels = "aeiouAEIOU"
    #     vowels.include?(letter)
        
    # end

    def pig_word(word)
        vowels = "aeiouAEIOU"
       if vowels.include?(word[0])
         word << "way"
       else 
        vowel_index = word.index(/[aeiouAEIOU]/)
        const = word.slice(0...vowel_index)
        leftovers = word.slice(vowel_index..word.length-1)

        leftovers + const + "ay"
        # binding.pry
       end
    end
#  x = PigLatinizer.new 
# x.piglatinize("shell")

end

#if begins with a vowel we want to add add way at the end