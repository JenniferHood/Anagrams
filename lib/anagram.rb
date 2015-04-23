class String
  define_method(:check_anagram) do |words_to_check_against|
    output = "" #initialize output string variable to hold our output
    word_letters = [] #initialize an array to hold the letters of our main word
    main_word = self #initialize and populate a variable to hold our main word
    main_word_letters = main_word.split("") #initialize a new array to hold the individual letters in our main word
    main_word_letters = main_word_letters.sort#sort the array of main word letters alphabetically
    words_to_check_against_array = words_to_check_against.split()#initializing the words to check array and populating it with our arguments, splitting the string in the process
    words_to_check_against_array.each do |word| #we're going to split up each word and then sort it alphabetically to compare agains our main word
      word_letters = word.split("") #splitting the word into letters
      word_letters = word_letters.sort #sorting the lettes alphabetically
      if word_letters == main_word_letters # checking to see if the two sets of letters match
        output = output + " " + word #adding word to output if it does match
      end
    end
    output=output.strip() #returning output
    end
end
