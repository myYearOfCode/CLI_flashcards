javascript=["what is repl?:Read Evaluate Print Loop",
"how do you typecast (coerce) a string named 'string' to an int?:parseInt(string)",
"how do you combine strings?:use the +",
'what is the format for string interpolation?:backticks, and ${}',
"how can you search within a string and get a boolean?:string.search('search string')",
"how can you search within a string and get the index?:string.indexOf('search string')",
"how do you print to the screen?:console.log() (for most things) or console.dir() (for objects that you want to explore in the console.)",
"how would you create a new object of the class Dog named spot?:spot = new Dog(args)",
"how can you make an array called myArr? (2 ways):myArr = []",
"how can you remove trailing whitespace and newlines?:inputString = String.trim(inputString)",
"generate a random number between 0 and 4.:Math.random(0)*4",
"what are the falsey values in javascript?:false, 0 (zero), '' or "" (empty string), null, undefined, NaN",
"how do you evaluate for truth?:Boolean(thingToBeTested)",
"how do you increment a variable?:counter++ or counter += 1",
"what is the easiest way to loop 10x?:use a for loop",
"how do you write 3 to the 5th?:Math.pow(3,5)",
"what does regex.match(string) return in either case?:if true it returns an object (which evaluates to true), if false it returns false.",
"what does unshift do?:it adds to the beginning of an array.",
"how do you add a new array element to the beginning of an array?:unshift",
"how do you add a new array element to the end of an array?:push",
"how do you add a new array element to a specific index of an array?:array.splice(index,numElementsToDelete,itemToInsert)",
"check if an array has an element equal to x. (you are looking for a boolean):array.includes(element)",
"check if an array has an element equal to x. (you are looking for the index):array.indexOf(element)",
"delete an element of an array:array.splice(index,numElementsToDelete)",
"iterate over every element in an array.:array.forEach() (this is not recommended because it is inescapable)",
"how can you filter an array with a function?:array.select{|element| element.even?} will return even elements.",
"how can you filter an array with a function BUT return the array elements that failed the function?:array.reject{|element| element.even?} will return odd elements.",
"explain how the .sort method works:numbers.sort((a, b) => a - b) will numerically sort lowest to highest a-z",
"delete the element at index 2 of the array 'noses':noses.delete(2,1)"
]

ruby=["what is repl?:Read Evaluate Print Loop",
"what is irb?:interactive ruby",
"what is pry:a ruby debugging tool",
"how do you use pry? (2 lines):require 'pry' ; binding.pry",
"how do you typecast (coerce) a string named 'string' to an int?:string = string.to_i",
"how do you combine strings?:use the +",
'what is the format for string interpolation?:double quotes, and #{}',
"how can you search within a string and get a boolean?:string.include('search string')",
"how can you search within a string and get the index?:string.index('search string')",
"how do you print to the screen?:puts or print, depending if you want a line ending or not",
"how would you create a new object of the class Dog named spot?:spot = Dog.new",
"how can you make an array called myArr? (2 ways):myArr = [] ; myArr = Array.new",
"what is the best way to show an array in output?:p(arrayName), puts doesn't output anything.",
"how can you remove trailing whitespace and newlines?:.strip",
"generate a random number between 0 and 4.:rand(0..4)",
"what is the best way to check the variable counter for nil?:counter.nil?",
"what is indicated by a method that ends in ?:it returns a boolean usually",
"what are the falsey values in ruby?:false and nil",
"how do you evaluate for truth?:put an !! in front of it. ",
"explain short circuit evaluation:put the more restrictive truth tests first in a multi && check so that they fail first and not all tests need to be evaluated.",
"""show a basic rspec test.:
require 'rspec/autorun'
describe 'the name of the function to be tested' do
    it 'should do a specific thing' do
    expect(functionName(args)).to eq(expectedOutput)
  end
end
""",
"how do you increment a variable?:counter += 1",
"what is the easiest way to loop 10x?:10.times {}",
"how do you write 3 to the 5th?:3**5",
"what does regex.match(string) return in either case?:if true it returns an object (which evaluates to true), if false it returns false.",
"what is the shovel operator?:<< it is the same as .push",
"what does << do?:it is the same as push. it adds to the end of an array.",
"what does unshift do?:it adds to the beginning of an array.",
"how do you add a new array element to the beginning of an array?:unshift",
"how do you add a new array element to the end of an array?:push or shovel operator <<",
"how do you add a new array element to a specific index of an array?:array.insert(index,element to insert)",
"check if an array has an element equal to x. (you are looking for a boolean):array.include(element)",
"check if an array has an element equal to x. (you are looking for the index):array.index(element)",
"delete an element of an array:array.delete(element)",
"iterate over every element in an array.:array.each{|each|}",
"iterate over every element in an array AND keep the index.:array.each_with_index{|each,index|}",
"how is .map unlike .each?:.map returns a new array with the values returned from each loop of the function. each does not.",
"how can you mutate the array with map?:array.map! will mutate the input array",
"how can you filter an array with a function?:array.select{|element| element.even?} will return even elements.",
"how can you filter an array with a function BUT return the array elements that failed the function?:array.reject{|element| element.even?} will return odd elements.",
"explain how the .sort method works:array.sort(|first_element, second_element| second_element <=> first_element) will return a reverse order sort. the <=> (spaceship operator) returns -1,0,or 1.",
"delete the element at index 2 of the array 'noses':noses.delete_at(2)",
"how do you make a string all lowercase?:string = string.downcase"
]
playing = true
cardArray = []
puts("Welcome to flashcards!\nWould you like to study ruby or javascript?")
language = gets.chomp.downcase
if (language == "ruby")
  cardArray += ruby
elsif (language == "javascript")
  cardArray += javascript
else
  puts("I did not recognize that input.")
end
# while (playing == true)
    puts("cardArray.length is #{cardArray.length}")
    while cardArray.length > 0
      current = rand(0..cardArray.length)
      puts current
      if (!cardArray[current].nil?)
        puts("##########################################################")
        puts("#{cardArray[current].split(":")[0]}")
        puts("##########################################################","")
        answer=gets.chomp
        puts("answer: #{cardArray[current].split(":")[1]}","")
        correct=gets.chomp
        if correct == ""
          cardArray.slice!(current)
        end
      else
        puts ("this term gave me trouble")
        puts cardArray.slice!(current)
        puts(cardArray.length)
      end
    end
  # end
  puts("you did all of the cards!")
# end
